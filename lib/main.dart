import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as diopack;
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
import 'package:overlay_support/overlay_support.dart';
import 'Screen/resultscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Yara Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String yarafilename = 'No YARA file was chosen';
  String apkfilename = 'No APK file was chosen';
  var apkfilebyte,
      apkfilehash =
          "bd6b21d3e46870a1b3a470d578746a6528ce4e13d68e24f25747ac45edfa6d56" //testing
      ,
      apkfileurl;
  final dio = diopack.Dio();
  final url = 'https://www.virustotal.com/api/v3/files';
  final xapikey =
      "56a524fdd1fcfde4168d1621c5861595e3e7c6806749c44f7d73d65ca69b6f11"; //VirusTotal API key

  //lists of jsonData
  //  String _jsonData;
  late Map<String, dynamic> jsonData;

  Future<Map<String, dynamic>> fetchData() async {
    String responseback = "";
    try {
      apkfileurl = url + "/" + apkfilehash; //file url
      var response = await dio.get(
        apkfileurl,
        options: diopack.Options(
          headers: {
            "Accept": "application/json",
            "x-apikey": xapikey,
          },
        ),
      );
      // final response = await get(Uri.parse(url));
      jsonData = jsonDecode(response.toString());

      print(response.toString());
      responseback = response.toString();
      // response.pipe(File("test.txt").openWrite());
      // print(jsonData);
      // print(jsonData['data']['attributes']['type_description']);
      // setState(() {
      //   _jsonData = response.toString();
      // });

    } on diopack.DioError catch (e) {
      if (e.response != null) {
        print(e.response?.data);
        print(e.response?.headers);
        print(e.response?.requestOptions);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        print(e.message);
      }
    }
    return jsonData;
  }

  Future<dynamic> uploadFile() async {
    var response;
    try {
      var formData = diopack.FormData.fromMap({
        'file': await diopack.MultipartFile.fromBytes(apkfilebyte,
            filename: apkfilename),
      });

      response = await dio.post(url,
          data: formData,
          options: diopack.Options(headers: {'x-apikey': xapikey}));

      //take file bytes and convert to hash
      apkfilehash = sha256.convert(apkfilebyte).toString();

      print(response);
    } on diopack.DioError catch (err) {
      print(err);
    }
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                onPressed: () async {
                  final result =
                      await FilePicker.platform.pickFiles(withData: true);
                  if (result == null) return;

                  setState(() {
                    apkfilename = result.files.first.name;
                    apkfilebyte = result.files.first.bytes;
                  });
                },
                child: const Text('Upload APK File'),
              ),
            ),
            Text(apkfilename), //APK name
            const SizedBox(
              //Empty space
              height: 80,
            ),
            const SizedBox(
              //Empty space
              height: 50,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: ElevatedButton(
                onPressed: () async {
                  uploadFile().then((valueTemp) {
                    fetchData().then((value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ResultPage(responseback: value)),
                      );
                    });
                  });
                },
                child: const Text('Start'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
