import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import 'package:yara_apk/VirusTotalReport.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, required this.responseback}) : super(key: key);
  Map<String, dynamic> responseback;
  // String downloadnoti = '';

  @override
  Widget build(BuildContext context) {
    var report = VTReport.fromJson(responseback);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Analysis Result'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            //Empty space
            height: 80,
          ),
          Text('APK Name: ${report.data?.attributes?.meaningfulName}'),
          Text('Sha256: ${report.data?.attributes?.sha256}'),
          Text('Detections:-'),
          Text(
              'Malicious: ${report.data?.attributes?.lastAnalysisStats?.malicious}'),
          Text(
              'Undetected: ${report.data?.attributes?.lastAnalysisStats?.undetected}'),
          Text('Yara Rule Source:-'),
          Text(
              '${report.data?.attributes?.crowdsourcedYaraResults?[0].rulesetName}'),
          Text(
              '${report.data?.attributes?.crowdsourcedYaraResults?[0].source}'),

          const SizedBox(
            //Empty space
            height: 80,
          ),
          SizedBox(
            width: 300,
            height: 45,
            child: ElevatedButton(
              onPressed: () async {
                print('Sha256 = ${report.data?.attributes?.sha256}');
                writeToReport(responseback);
                print('Write to file completed');
                showSimpleNotification(
                  Text("Download Success!"),
                  background: Colors.blue,
                );
              },
              child: const Text('Download APK details'),
            ),
          ),
          // Text(downloadnoti),
        ],
      ),
    );
  }

  Future<String> get _localPath async {
    // final directory = await getApplicationDocumentsDirectory();
    final directory = Directory('/storage/emulated/0/Download');
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/report.txt');
  }

  Future<File> writeToReport(Map<String, dynamic> reportJson) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$reportJson');
  }
}
