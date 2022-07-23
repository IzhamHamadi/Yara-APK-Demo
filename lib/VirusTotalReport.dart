class VTReport {
  Data? data;

  VTReport({this.data});

  VTReport.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Attributes? attributes;
  String? type;
  String? id;
  Links? links;

  Data({this.attributes, this.type, this.id, this.links});

  Data.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    type = json['type'];
    id = json['id'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['type'] = this.type;
    data['id'] = this.id;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class Attributes {
  String? typeDescription;
  String? tlsh;
  String? vhash;
  List<Trid>? trid;
  List<CrowdsourcedYaraResults>? crowdsourcedYaraResults;
  List<String>? names;
  int? lastModificationDate;
  String? typeTag;
  int? timesSubmitted;
  TotalVotes? totalVotes;
  int? size;
  // PopularThreatClassification? popularThreatClassification;
  int? lastSubmissionDate;
  // LastAnalysisResults? lastAnalysisResults;
  String? sha256;
  String? typeExtension;
  List<String>? tags;
  int? lastAnalysisDate;
  int? uniqueSources;
  int? firstSubmissionDate;
  String? sha1;
  String? ssdeep;
  BundleInfo? bundleInfo;
  String? md5;
  Androguard? androguard;
  String? magic;
  LastAnalysisStats? lastAnalysisStats;
  String? meaningfulName;
  int? reputation;

  Attributes(
      {this.typeDescription,
      this.tlsh,
      this.vhash,
      this.trid,
      this.crowdsourcedYaraResults,
      this.names,
      this.lastModificationDate,
      this.typeTag,
      this.timesSubmitted,
      this.totalVotes,
      this.size,
      // this.popularThreatClassification,
      this.lastSubmissionDate,
      // this.lastAnalysisResults,
      this.sha256,
      this.typeExtension,
      this.tags,
      this.lastAnalysisDate,
      this.uniqueSources,
      this.firstSubmissionDate,
      this.sha1,
      this.ssdeep,
      this.bundleInfo,
      this.md5,
      this.androguard,
      this.magic,
      this.lastAnalysisStats,
      this.meaningfulName,
      this.reputation});

  Attributes.fromJson(Map<String, dynamic> json) {
    typeDescription = json['type_description'];
    tlsh = json['tlsh'];
    vhash = json['vhash'];
    if (json['trid'] != null) {
      trid = <Trid>[];
      json['trid'].forEach((v) {
        trid!.add(new Trid.fromJson(v));
      });
    }
    if (json['crowdsourced_yara_results'] != null) {
      crowdsourcedYaraResults = <CrowdsourcedYaraResults>[];
      json['crowdsourced_yara_results'].forEach((v) {
        crowdsourcedYaraResults!.add(new CrowdsourcedYaraResults.fromJson(v));
      });
    }
    names = json['names'].cast<String>();
    lastModificationDate = json['last_modification_date'];
    typeTag = json['type_tag'];
    timesSubmitted = json['times_submitted'];
    totalVotes = json['total_votes'] != null
        ? new TotalVotes.fromJson(json['total_votes'])
        : null;
    size = json['size'];
    // popularThreatClassification = json['popular_threat_classification'] != null
    //     ? new PopularThreatClassification.fromJson(
    //         json['popular_threat_classification'])
    //     : null;
    lastSubmissionDate = json['last_submission_date'];
    // lastAnalysisResults = json['last_analysis_results'] != null
    //     ? new LastAnalysisResults.fromJson(json['last_analysis_results'])
    //     : null;
    sha256 = json['sha256'];
    typeExtension = json['type_extension'];
    tags = json['tags'].cast<String>();
    lastAnalysisDate = json['last_analysis_date'];
    uniqueSources = json['unique_sources'];
    firstSubmissionDate = json['first_submission_date'];
    sha1 = json['sha1'];
    ssdeep = json['ssdeep'];
    bundleInfo = json['bundle_info'] != null
        ? new BundleInfo.fromJson(json['bundle_info'])
        : null;
    md5 = json['md5'];
    androguard = json['androguard'] != null
        ? new Androguard.fromJson(json['androguard'])
        : null;
    magic = json['magic'];
    lastAnalysisStats = json['last_analysis_stats'] != null
        ? new LastAnalysisStats.fromJson(json['last_analysis_stats'])
        : null;
    meaningfulName = json['meaningful_name'];
    reputation = json['reputation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type_description'] = this.typeDescription;
    data['tlsh'] = this.tlsh;
    data['vhash'] = this.vhash;
    if (this.trid != null) {
      data['trid'] = this.trid!.map((v) => v.toJson()).toList();
    }
    if (this.crowdsourcedYaraResults != null) {
      data['crowdsourced_yara_results'] =
          this.crowdsourcedYaraResults!.map((v) => v.toJson()).toList();
    }
    data['names'] = this.names;
    data['last_modification_date'] = this.lastModificationDate;
    data['type_tag'] = this.typeTag;
    data['times_submitted'] = this.timesSubmitted;
    if (this.totalVotes != null) {
      data['total_votes'] = this.totalVotes!.toJson();
    }
    data['size'] = this.size;
    // if (this.popularThreatClassification != null) {
    //   data['popular_threat_classification'] =
    //       this.popularThreatClassification!.toJson();
    // }
    data['last_submission_date'] = this.lastSubmissionDate;
    // if (this.lastAnalysisResults != null) {
    //   data['last_analysis_results'] = this.lastAnalysisResults!.toJson();
    // }
    data['sha256'] = this.sha256;
    data['type_extension'] = this.typeExtension;
    data['tags'] = this.tags;
    data['last_analysis_date'] = this.lastAnalysisDate;
    data['unique_sources'] = this.uniqueSources;
    data['first_submission_date'] = this.firstSubmissionDate;
    data['sha1'] = this.sha1;
    data['ssdeep'] = this.ssdeep;
    if (this.bundleInfo != null) {
      data['bundle_info'] = this.bundleInfo!.toJson();
    }
    data['md5'] = this.md5;
    if (this.androguard != null) {
      data['androguard'] = this.androguard!.toJson();
    }
    data['magic'] = this.magic;
    if (this.lastAnalysisStats != null) {
      data['last_analysis_stats'] = this.lastAnalysisStats!.toJson();
    }
    data['meaningful_name'] = this.meaningfulName;
    data['reputation'] = this.reputation;
    return data;
  }
}

class Trid {
  String? fileType;
  double? probability;

  Trid({this.fileType, this.probability});

  Trid.fromJson(Map<String, dynamic> json) {
    fileType = json['file_type'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['file_type'] = this.fileType;
    data['probability'] = this.probability;
    return data;
  }
}

class CrowdsourcedYaraResults {
  String? description;
  String? source;
  String? author;
  String? rulesetName;
  String? ruleName;
  String? rulesetId;

  CrowdsourcedYaraResults(
      {this.description,
      this.source,
      this.author,
      this.rulesetName,
      this.ruleName,
      this.rulesetId});

  CrowdsourcedYaraResults.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    source = json['source'];
    author = json['author'];
    rulesetName = json['ruleset_name'];
    ruleName = json['rule_name'];
    rulesetId = json['ruleset_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['source'] = this.source;
    data['author'] = this.author;
    data['ruleset_name'] = this.rulesetName;
    data['rule_name'] = this.ruleName;
    data['ruleset_id'] = this.rulesetId;
    return data;
  }
}

class TotalVotes {
  int? harmless;
  int? malicious;

  TotalVotes({this.harmless, this.malicious});

  TotalVotes.fromJson(Map<String, dynamic> json) {
    harmless = json['harmless'];
    malicious = json['malicious'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['harmless'] = this.harmless;
    data['malicious'] = this.malicious;
    return data;
  }
}

// class PopularThreatClassification {
String? suggestedThreatLabel;
List<PopularThreatCategory>? popularThreatCategory;
// List<PopularThreatName>? popularThreatName;

// PopularThreatClassification(
//     {this.suggestedThreatLabel,
//     this.popularThreatCategory,
//     });

// PopularThreatClassification.fromJson(Map<String, dynamic> json) {
//   suggestedThreatLabel = json['suggested_threat_label'];
//   if (json['popular_threat_category'] != null) {
//     popularThreatCategory = <PopularThreatCategory>[];
//     json['popular_threat_category'].forEach((v) {
//       popularThreatCategory!.add(new PopularThreatCategory.fromJson(v));
//     });
//   }
//   if (json['popular_threat_name'] != null) {
//     popularThreatName = <PopularThreatName>[];
//     json['popular_threat_name'].forEach((v) {
//       popularThreatName!.add(new PopularThreatName.fromJson(v));
//     });
//   }
// }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['suggested_threat_label'] = this.suggestedThreatLabel;
//   if (this.popularThreatCategory != null) {
//     data['popular_threat_category'] =
//         this.popularThreatCategory!.map((v) => v.toJson()).toList();
//   }
//   if (this.popularThreatName != null) {
//     data['popular_threat_name'] =
//         this.popularThreatName!.map((v) => v.toJson()).toList();
//   }
//   return data;
// }
// }

class PopularThreatCategory {
  int? count;
  String? value;

  PopularThreatCategory({this.count, this.value});

  PopularThreatCategory.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['value'] = this.value;
    return data;
  }
}

// class LastAnalysisResults {
//   Bkav? bkav;
//   Lionic? lionic;
//   // Tehtris? tehtris;
//   Lionic? drWeb;
//   Bkav? clamAV;
//   Bkav? fireEye;
//   Lionic? cATQuickHeal;
//   Lionic? mcAfee;
//   Bkav? malwarebytes;
//   Bkav? vIPRE;
//   Bkav? paloalto;
//   Lionic? sangfor;
//   Lionic? trustlook;
//   Bkav? bitDefender;
//   Lionic? k7GW;
//   Bkav? k7AntiVirus;
//   Bkav? arcabit;
//   Bkav? bitDefenderTheta;
//   Bkav? virIT;
//   Bkav? cyren;
//   Lionic? symantecMobileInsight;
//   Lionic? symantec;
//   Bkav? elastic;
//   Lionic? eSETNOD32;
//   Bkav? aPEX;
//   Bkav? trendMicroHouseCall;
//   Lionic? avast;
//   Lionic? cynet;
//   Lionic? kaspersky;
//   Lionic? alibaba;
//   Lionic? nANOAntivirus;
//   Bkav? sUPERAntiSpyware;
//   Bkav? microWorldEScan;
//   Bkav? rising;
//   Bkav? adAware;
//   Lionic? sophos;
//   Lionic? comodo;
//   Lionic? fSecure;
//   Bkav? baidu;
//   Lionic? zillya;
//   Bkav? trendMicro;
//   Lionic? mcAfeeGWEdition;
//   Bkav? trapmine;
//   Bkav? emsisoft;
//   Lionic? ikarus;
//   Lionic? avastMobile;
//   Bkav? jiangmin;
//   Bkav? webroot;
//   Lionic? avira;
//   Bkav? kingsoft;
//   Bkav? gridinsoft;
//   Lionic? microsoft;
//   Bkav? viRobot;
//   Bkav? zoneAlarm;
//   Bkav? gData;
//   Bkav? sentinelOne;
//   Lionic? bitDefenderFalx;
//   Lionic? ahnLabV3;
//   Bkav? acronis;
//   Bkav? vBA32;
//   Bkav? aLYac;
//   Bkav? tACHYON;
//   Bkav? cylance;
//   Bkav? zoner;
//   Lionic? tencent;
//   Bkav? yandex;
//   Lionic? mAX;
//   Bkav? maxSecure;
//   Lionic? fortinet;
//   Lionic? aVG;
//   Bkav? cybereason;
//   Bkav? panda;
//   CrowdStrike? crowdStrike;

//   LastAnalysisResults(
//       {this.bkav,
//       this.lionic,
//       // this.tehtris,
//       this.drWeb,
//       this.clamAV,
//       this.fireEye,
//       this.cATQuickHeal,
//       this.mcAfee,
//       this.malwarebytes,
//       this.vIPRE,
//       this.paloalto,
//       this.sangfor,
//       this.trustlook,
//       this.bitDefender,
//       this.k7GW,
//       this.k7AntiVirus,
//       this.arcabit,
//       this.bitDefenderTheta,
//       this.virIT,
//       this.cyren,
//       this.symantecMobileInsight,
//       this.symantec,
//       this.elastic,
//       this.eSETNOD32,
//       this.aPEX,
//       this.trendMicroHouseCall,
//       this.avast,
//       this.cynet,
//       this.kaspersky,
//       this.alibaba,
//       this.nANOAntivirus,
//       this.sUPERAntiSpyware,
//       this.microWorldEScan,
//       this.rising,
//       this.adAware,
//       this.sophos,
//       this.comodo,
//       this.fSecure,
//       this.baidu,
//       this.zillya,
//       this.trendMicro,
//       this.mcAfeeGWEdition,
//       this.trapmine,
//       this.emsisoft,
//       this.ikarus,
//       this.avastMobile,
//       this.jiangmin,
//       this.webroot,
//       this.avira,
//       this.kingsoft,
//       this.gridinsoft,
//       this.microsoft,
//       this.viRobot,
//       this.zoneAlarm,
//       this.gData,
//       this.sentinelOne,
//       this.bitDefenderFalx,
//       this.ahnLabV3,
//       this.acronis,
//       this.vBA32,
//       this.aLYac,
//       this.tACHYON,
//       this.cylance,
//       this.zoner,
//       this.tencent,
//       this.yandex,
//       this.mAX,
//       this.maxSecure,
//       this.fortinet,
//       this.aVG,
//       this.cybereason,
//       this.panda,
//       this.crowdStrike});

//   LastAnalysisResults.fromJson(Map<String, dynamic> json) {
//     bkav = json['Bkav'] != null ? new Bkav.fromJson(json['Bkav']) : null;
//     lionic =
//         json['Lionic'] != null ? new Lionic.fromJson(json['Lionic']) : null;
//     // tehtris =
//     //     json['tehtris'] != null ? new Tehtris.fromJson(json['tehtris']) : null;
//     drWeb = json['DrWeb'] != null ? new Lionic.fromJson(json['DrWeb']) : null;
//     clamAV = json['ClamAV'] != null ? new Bkav.fromJson(json['ClamAV']) : null;
//     fireEye =
//         json['FireEye'] != null ? new Bkav.fromJson(json['FireEye']) : null;
//     cATQuickHeal = json['CAT-QuickHeal'] != null
//         ? new Lionic.fromJson(json['CAT-QuickHeal'])
//         : null;
//     mcAfee =
//         json['McAfee'] != null ? new Lionic.fromJson(json['McAfee']) : null;
//     malwarebytes = json['Malwarebytes'] != null
//         ? new Bkav.fromJson(json['Malwarebytes'])
//         : null;
//     vIPRE = json['VIPRE'] != null ? new Bkav.fromJson(json['VIPRE']) : null;
//     paloalto =
//         json['Paloalto'] != null ? new Bkav.fromJson(json['Paloalto']) : null;
//     sangfor =
//         json['Sangfor'] != null ? new Lionic.fromJson(json['Sangfor']) : null;
//     trustlook = json['Trustlook'] != null
//         ? new Lionic.fromJson(json['Trustlook'])
//         : null;
//     bitDefender = json['BitDefender'] != null
//         ? new Bkav.fromJson(json['BitDefender'])
//         : null;
//     k7GW = json['K7GW'] != null ? new Lionic.fromJson(json['K7GW']) : null;
//     k7AntiVirus = json['K7AntiVirus'] != null
//         ? new Bkav.fromJson(json['K7AntiVirus'])
//         : null;
//     arcabit =
//         json['Arcabit'] != null ? new Bkav.fromJson(json['Arcabit']) : null;
//     bitDefenderTheta = json['BitDefenderTheta'] != null
//         ? new Bkav.fromJson(json['BitDefenderTheta'])
//         : null;
//     virIT = json['VirIT'] != null ? new Bkav.fromJson(json['VirIT']) : null;
//     cyren = json['Cyren'] != null ? new Bkav.fromJson(json['Cyren']) : null;
//     symantecMobileInsight = json['SymantecMobileInsight'] != null
//         ? new Lionic.fromJson(json['SymantecMobileInsight'])
//         : null;
//     symantec =
//         json['Symantec'] != null ? new Lionic.fromJson(json['Symantec']) : null;
//     elastic =
//         json['Elastic'] != null ? new Bkav.fromJson(json['Elastic']) : null;
//     eSETNOD32 = json['ESET-NOD32'] != null
//         ? new Lionic.fromJson(json['ESET-NOD32'])
//         : null;
//     aPEX = json['APEX'] != null ? new Bkav.fromJson(json['APEX']) : null;
//     trendMicroHouseCall = json['TrendMicro-HouseCall'] != null
//         ? new Bkav.fromJson(json['TrendMicro-HouseCall'])
//         : null;
//     avast = json['Avast'] != null ? new Lionic.fromJson(json['Avast']) : null;
//     cynet = json['Cynet'] != null ? new Lionic.fromJson(json['Cynet']) : null;
//     kaspersky = json['Kaspersky'] != null
//         ? new Lionic.fromJson(json['Kaspersky'])
//         : null;
//     alibaba =
//         json['Alibaba'] != null ? new Lionic.fromJson(json['Alibaba']) : null;
//     nANOAntivirus = json['NANO-Antivirus'] != null
//         ? new Lionic.fromJson(json['NANO-Antivirus'])
//         : null;
//     sUPERAntiSpyware = json['SUPERAntiSpyware'] != null
//         ? new Bkav.fromJson(json['SUPERAntiSpyware'])
//         : null;
//     microWorldEScan = json['MicroWorld-eScan'] != null
//         ? new Bkav.fromJson(json['MicroWorld-eScan'])
//         : null;
//     rising = json['Rising'] != null ? new Bkav.fromJson(json['Rising']) : null;
//     adAware =
//         json['Ad-Aware'] != null ? new Bkav.fromJson(json['Ad-Aware']) : null;
//     sophos =
//         json['Sophos'] != null ? new Lionic.fromJson(json['Sophos']) : null;
//     comodo =
//         json['Comodo'] != null ? new Lionic.fromJson(json['Comodo']) : null;
//     fSecure =
//         json['F-Secure'] != null ? new Lionic.fromJson(json['F-Secure']) : null;
//     baidu = json['Baidu'] != null ? new Bkav.fromJson(json['Baidu']) : null;
//     zillya =
//         json['Zillya'] != null ? new Lionic.fromJson(json['Zillya']) : null;
//     trendMicro = json['TrendMicro'] != null
//         ? new Bkav.fromJson(json['TrendMicro'])
//         : null;
//     mcAfeeGWEdition = json['McAfee-GW-Edition'] != null
//         ? new Lionic.fromJson(json['McAfee-GW-Edition'])
//         : null;
//     trapmine =
//         json['Trapmine'] != null ? new Bkav.fromJson(json['Trapmine']) : null;
//     emsisoft =
//         json['Emsisoft'] != null ? new Bkav.fromJson(json['Emsisoft']) : null;
//     ikarus =
//         json['Ikarus'] != null ? new Lionic.fromJson(json['Ikarus']) : null;
//     avastMobile = json['Avast-Mobile'] != null
//         ? new Lionic.fromJson(json['Avast-Mobile'])
//         : null;
//     jiangmin =
//         json['Jiangmin'] != null ? new Bkav.fromJson(json['Jiangmin']) : null;
//     webroot =
//         json['Webroot'] != null ? new Bkav.fromJson(json['Webroot']) : null;
//     avira = json['Avira'] != null ? new Lionic.fromJson(json['Avira']) : null;
//     kingsoft =
//         json['Kingsoft'] != null ? new Bkav.fromJson(json['Kingsoft']) : null;
//     gridinsoft = json['Gridinsoft'] != null
//         ? new Bkav.fromJson(json['Gridinsoft'])
//         : null;
//     microsoft = json['Microsoft'] != null
//         ? new Lionic.fromJson(json['Microsoft'])
//         : null;
//     viRobot =
//         json['ViRobot'] != null ? new Bkav.fromJson(json['ViRobot']) : null;
//     zoneAlarm =
//         json['ZoneAlarm'] != null ? new Bkav.fromJson(json['ZoneAlarm']) : null;
//     gData = json['GData'] != null ? new Bkav.fromJson(json['GData']) : null;
//     sentinelOne = json['SentinelOne'] != null
//         ? new Bkav.fromJson(json['SentinelOne'])
//         : null;
//     bitDefenderFalx = json['BitDefenderFalx'] != null
//         ? new Lionic.fromJson(json['BitDefenderFalx'])
//         : null;
//     ahnLabV3 = json['AhnLab-V3'] != null
//         ? new Lionic.fromJson(json['AhnLab-V3'])
//         : null;
//     acronis =
//         json['Acronis'] != null ? new Bkav.fromJson(json['Acronis']) : null;
//     vBA32 = json['VBA32'] != null ? new Bkav.fromJson(json['VBA32']) : null;
//     aLYac = json['ALYac'] != null ? new Bkav.fromJson(json['ALYac']) : null;
//     tACHYON =
//         json['TACHYON'] != null ? new Bkav.fromJson(json['TACHYON']) : null;
//     cylance =
//         json['Cylance'] != null ? new Bkav.fromJson(json['Cylance']) : null;
//     zoner = json['Zoner'] != null ? new Bkav.fromJson(json['Zoner']) : null;
//     tencent =
//         json['Tencent'] != null ? new Lionic.fromJson(json['Tencent']) : null;
//     yandex = json['Yandex'] != null ? new Bkav.fromJson(json['Yandex']) : null;
//     mAX = json['MAX'] != null ? new Lionic.fromJson(json['MAX']) : null;
//     maxSecure =
//         json['MaxSecure'] != null ? new Bkav.fromJson(json['MaxSecure']) : null;
//     fortinet =
//         json['Fortinet'] != null ? new Lionic.fromJson(json['Fortinet']) : null;
//     aVG = json['AVG'] != null ? new Lionic.fromJson(json['AVG']) : null;
//     cybereason = json['Cybereason'] != null
//         ? new Bkav.fromJson(json['Cybereason'])
//         : null;
//     panda = json['Panda'] != null ? new Bkav.fromJson(json['Panda']) : null;
//     crowdStrike = json['CrowdStrike'] != null
//         ? new CrowdStrike.fromJson(json['CrowdStrike'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.bkav != null) {
//       data['Bkav'] = this.bkav!.toJson();
//     }
//     if (this.lionic != null) {
//       data['Lionic'] = this.lionic!.toJson();
//     }
//     // if (this.tehtris != null) {
//     //   data['tehtris'] = this.tehtris!.toJson();
//     // }
//     if (this.drWeb != null) {
//       data['DrWeb'] = this.drWeb!.toJson();
//     }
//     if (this.clamAV != null) {
//       data['ClamAV'] = this.clamAV!.toJson();
//     }
//     if (this.fireEye != null) {
//       data['FireEye'] = this.fireEye!.toJson();
//     }
//     if (this.cATQuickHeal != null) {
//       data['CAT-QuickHeal'] = this.cATQuickHeal!.toJson();
//     }
//     if (this.mcAfee != null) {
//       data['McAfee'] = this.mcAfee!.toJson();
//     }
//     if (this.malwarebytes != null) {
//       data['Malwarebytes'] = this.malwarebytes!.toJson();
//     }
//     if (this.vIPRE != null) {
//       data['VIPRE'] = this.vIPRE!.toJson();
//     }
//     if (this.paloalto != null) {
//       data['Paloalto'] = this.paloalto!.toJson();
//     }
//     if (this.sangfor != null) {
//       data['Sangfor'] = this.sangfor!.toJson();
//     }
//     if (this.trustlook != null) {
//       data['Trustlook'] = this.trustlook!.toJson();
//     }
//     if (this.bitDefender != null) {
//       data['BitDefender'] = this.bitDefender!.toJson();
//     }
//     if (this.k7GW != null) {
//       data['K7GW'] = this.k7GW!.toJson();
//     }
//     if (this.k7AntiVirus != null) {
//       data['K7AntiVirus'] = this.k7AntiVirus!.toJson();
//     }
//     if (this.arcabit != null) {
//       data['Arcabit'] = this.arcabit!.toJson();
//     }
//     if (this.bitDefenderTheta != null) {
//       data['BitDefenderTheta'] = this.bitDefenderTheta!.toJson();
//     }
//     if (this.virIT != null) {
//       data['VirIT'] = this.virIT!.toJson();
//     }
//     if (this.cyren != null) {
//       data['Cyren'] = this.cyren!.toJson();
//     }
//     if (this.symantecMobileInsight != null) {
//       data['SymantecMobileInsight'] = this.symantecMobileInsight!.toJson();
//     }
//     if (this.symantec != null) {
//       data['Symantec'] = this.symantec!.toJson();
//     }
//     if (this.elastic != null) {
//       data['Elastic'] = this.elastic!.toJson();
//     }
//     if (this.eSETNOD32 != null) {
//       data['ESET-NOD32'] = this.eSETNOD32!.toJson();
//     }
//     if (this.aPEX != null) {
//       data['APEX'] = this.aPEX!.toJson();
//     }
//     if (this.trendMicroHouseCall != null) {
//       data['TrendMicro-HouseCall'] = this.trendMicroHouseCall!.toJson();
//     }
//     if (this.avast != null) {
//       data['Avast'] = this.avast!.toJson();
//     }
//     if (this.cynet != null) {
//       data['Cynet'] = this.cynet!.toJson();
//     }
//     if (this.kaspersky != null) {
//       data['Kaspersky'] = this.kaspersky!.toJson();
//     }
//     if (this.alibaba != null) {
//       data['Alibaba'] = this.alibaba!.toJson();
//     }
//     if (this.nANOAntivirus != null) {
//       data['NANO-Antivirus'] = this.nANOAntivirus!.toJson();
//     }
//     if (this.sUPERAntiSpyware != null) {
//       data['SUPERAntiSpyware'] = this.sUPERAntiSpyware!.toJson();
//     }
//     if (this.microWorldEScan != null) {
//       data['MicroWorld-eScan'] = this.microWorldEScan!.toJson();
//     }
//     if (this.rising != null) {
//       data['Rising'] = this.rising!.toJson();
//     }
//     if (this.adAware != null) {
//       data['Ad-Aware'] = this.adAware!.toJson();
//     }
//     if (this.sophos != null) {
//       data['Sophos'] = this.sophos!.toJson();
//     }
//     if (this.comodo != null) {
//       data['Comodo'] = this.comodo!.toJson();
//     }
//     if (this.fSecure != null) {
//       data['F-Secure'] = this.fSecure!.toJson();
//     }
//     if (this.baidu != null) {
//       data['Baidu'] = this.baidu!.toJson();
//     }
//     if (this.zillya != null) {
//       data['Zillya'] = this.zillya!.toJson();
//     }
//     if (this.trendMicro != null) {
//       data['TrendMicro'] = this.trendMicro!.toJson();
//     }
//     if (this.mcAfeeGWEdition != null) {
//       data['McAfee-GW-Edition'] = this.mcAfeeGWEdition!.toJson();
//     }
//     if (this.trapmine != null) {
//       data['Trapmine'] = this.trapmine!.toJson();
//     }
//     if (this.emsisoft != null) {
//       data['Emsisoft'] = this.emsisoft!.toJson();
//     }
//     if (this.ikarus != null) {
//       data['Ikarus'] = this.ikarus!.toJson();
//     }
//     if (this.avastMobile != null) {
//       data['Avast-Mobile'] = this.avastMobile!.toJson();
//     }
//     if (this.jiangmin != null) {
//       data['Jiangmin'] = this.jiangmin!.toJson();
//     }
//     if (this.webroot != null) {
//       data['Webroot'] = this.webroot!.toJson();
//     }
//     if (this.avira != null) {
//       data['Avira'] = this.avira!.toJson();
//     }
//     if (this.kingsoft != null) {
//       data['Kingsoft'] = this.kingsoft!.toJson();
//     }
//     if (this.gridinsoft != null) {
//       data['Gridinsoft'] = this.gridinsoft!.toJson();
//     }
//     if (this.microsoft != null) {
//       data['Microsoft'] = this.microsoft!.toJson();
//     }
//     if (this.viRobot != null) {
//       data['ViRobot'] = this.viRobot!.toJson();
//     }
//     if (this.zoneAlarm != null) {
//       data['ZoneAlarm'] = this.zoneAlarm!.toJson();
//     }
//     if (this.gData != null) {
//       data['GData'] = this.gData!.toJson();
//     }
//     if (this.sentinelOne != null) {
//       data['SentinelOne'] = this.sentinelOne!.toJson();
//     }
//     if (this.bitDefenderFalx != null) {
//       data['BitDefenderFalx'] = this.bitDefenderFalx!.toJson();
//     }
//     if (this.ahnLabV3 != null) {
//       data['AhnLab-V3'] = this.ahnLabV3!.toJson();
//     }
//     if (this.acronis != null) {
//       data['Acronis'] = this.acronis!.toJson();
//     }
//     if (this.vBA32 != null) {
//       data['VBA32'] = this.vBA32!.toJson();
//     }
//     if (this.aLYac != null) {
//       data['ALYac'] = this.aLYac!.toJson();
//     }
//     if (this.tACHYON != null) {
//       data['TACHYON'] = this.tACHYON!.toJson();
//     }
//     if (this.cylance != null) {
//       data['Cylance'] = this.cylance!.toJson();
//     }
//     if (this.zoner != null) {
//       data['Zoner'] = this.zoner!.toJson();
//     }
//     if (this.tencent != null) {
//       data['Tencent'] = this.tencent!.toJson();
//     }
//     if (this.yandex != null) {
//       data['Yandex'] = this.yandex!.toJson();
//     }
//     if (this.mAX != null) {
//       data['MAX'] = this.mAX!.toJson();
//     }
//     if (this.maxSecure != null) {
//       data['MaxSecure'] = this.maxSecure!.toJson();
//     }
//     if (this.fortinet != null) {
//       data['Fortinet'] = this.fortinet!.toJson();
//     }
//     if (this.aVG != null) {
//       data['AVG'] = this.aVG!.toJson();
//     }
//     if (this.cybereason != null) {
//       data['Cybereason'] = this.cybereason!.toJson();
//     }
//     if (this.panda != null) {
//       data['Panda'] = this.panda!.toJson();
//     }
//     if (this.crowdStrike != null) {
//       data['CrowdStrike'] = this.crowdStrike!.toJson();
//     }
//     return data;
//   }
// }

class Bkav {
  String? category;
  String? engineName;
  String? engineVersion;
  Null? result;
  String? method;
  String? engineUpdate;

  Bkav(
      {this.category,
      this.engineName,
      this.engineVersion,
      this.result,
      this.method,
      this.engineUpdate});

  Bkav.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    engineName = json['engine_name'];
    engineVersion = json['engine_version'];
    result = json['result'];
    method = json['method'];
    engineUpdate = json['engine_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['engine_name'] = this.engineName;
    data['engine_version'] = this.engineVersion;
    data['result'] = this.result;
    data['method'] = this.method;
    data['engine_update'] = this.engineUpdate;
    return data;
  }
}

class Lionic {
  String? category;
  String? engineName;
  String? engineVersion;
  String? result;
  String? method;
  String? engineUpdate;

  Lionic(
      {this.category,
      this.engineName,
      this.engineVersion,
      this.result,
      this.method,
      this.engineUpdate});

  Lionic.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    engineName = json['engine_name'];
    engineVersion = json['engine_version'];
    result = json['result'];
    method = json['method'];
    engineUpdate = json['engine_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['engine_name'] = this.engineName;
    data['engine_version'] = this.engineVersion;
    data['result'] = this.result;
    data['method'] = this.method;
    data['engine_update'] = this.engineUpdate;
    return data;
  }
}

// class Tehtris {
//   String? category;
//   String? engineName;
//   Null? engineVersion;
//   Null? result;
//   String? method;
//   String? engineUpdate;

//   Tehtris(
//       {this.category,
//       this.engineName,
//       this.engineVersion,
//       this.result,
//       this.method,
//       this.engineUpdate});

//   Tehtris.fromJson(Map<String, dynamic> json) {
//     category = json['category'];
//     engineName = json['engine_name'];
//     engineVersion = json['engine_version'];
//     result = json['result'];
//     method = json['method'];
//     engineUpdate = json['engine_update'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['category'] = this.category;
//     data['engine_name'] = this.engineName;
//     data['engine_version'] = this.engineVersion;
//     data['result'] = this.result;
//     data['method'] = this.method;
//     data['engine_update'] = this.engineUpdate;
//     return data;
//   }
// }

class CrowdStrike {
  String? category;
  String? engineName;
  String? engineVersion;
  Null? result;
  String? method;
  Null? engineUpdate;

  CrowdStrike(
      {this.category,
      this.engineName,
      this.engineVersion,
      this.result,
      this.method,
      this.engineUpdate});

  CrowdStrike.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    engineName = json['engine_name'];
    engineVersion = json['engine_version'];
    result = json['result'];
    method = json['method'];
    engineUpdate = json['engine_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['engine_name'] = this.engineName;
    data['engine_version'] = this.engineVersion;
    data['result'] = this.result;
    data['method'] = this.method;
    data['engine_update'] = this.engineUpdate;
    return data;
  }
}

class BundleInfo {
  String? highestDatetime;
  String? lowestDatetime;
  int? numChildren;
  Extensions? extensions;
  FileTypes? fileTypes;
  String? type;
  int? uncompressedSize;

  BundleInfo(
      {this.highestDatetime,
      this.lowestDatetime,
      this.numChildren,
      this.extensions,
      this.fileTypes,
      this.type,
      this.uncompressedSize});

  BundleInfo.fromJson(Map<String, dynamic> json) {
    highestDatetime = json['highest_datetime'];
    lowestDatetime = json['lowest_datetime'];
    numChildren = json['num_children'];
    extensions = json['extensions'] != null
        ? new Extensions.fromJson(json['extensions'])
        : null;
    fileTypes = json['file_types'] != null
        ? new FileTypes.fromJson(json['file_types'])
        : null;
    type = json['type'];
    uncompressedSize = json['uncompressed_size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['highest_datetime'] = this.highestDatetime;
    data['lowest_datetime'] = this.lowestDatetime;
    data['num_children'] = this.numChildren;
    if (this.extensions != null) {
      data['extensions'] = this.extensions!.toJson();
    }
    if (this.fileTypes != null) {
      data['file_types'] = this.fileTypes!.toJson();
    }
    data['type'] = this.type;
    data['uncompressed_size'] = this.uncompressedSize;
    return data;
  }
}

class Extensions {
  int? xml;
  int? dex;
  int? mF;
  int? pro;
  int? rSA;
  int? sF;
  int? png;

  Extensions(
      {this.xml, this.dex, this.mF, this.pro, this.rSA, this.sF, this.png});

  Extensions.fromJson(Map<String, dynamic> json) {
    xml = json['xml'];
    dex = json['dex'];
    mF = json['MF'];
    pro = json['pro'];
    rSA = json['RSA'];
    sF = json['SF'];
    png = json['png'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['xml'] = this.xml;
    data['dex'] = this.dex;
    data['MF'] = this.mF;
    data['pro'] = this.pro;
    data['RSA'] = this.rSA;
    data['SF'] = this.sF;
    data['png'] = this.png;
    return data;
  }
}

class FileTypes {
  int? xML;
  int? unknown;
  int? dEX;
  int? pNG;

  FileTypes({this.xML, this.unknown, this.dEX, this.pNG});

  FileTypes.fromJson(Map<String, dynamic> json) {
    xML = json['XML'];
    unknown = json['unknown'];
    dEX = json['DEX'];
    pNG = json['PNG'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['XML'] = this.xML;
    data['unknown'] = this.unknown;
    data['DEX'] = this.dEX;
    data['PNG'] = this.pNG;
    return data;
  }
}

class Androguard {
  double? vTAndroidInfo;
  bool? androidApplicationError;
  String? minSdkVersion;
  String? androguardVersion;
  // List<String>? activities;
  Certificate? certificate;
  int? androidApplication;
  RiskIndicator? riskIndicator;
  List<String>? services;
  String? androidVersionCode;
  String? mainActivity;
  String? package;
  IntentFilters? intentFilters;
  String? androidVersionName;
  String? targetSdkVersion;
  String? androidApplicationInfo;
  List<String>? providers;
  PermissionDetails? permissionDetails;
  List<String>? receivers;
  List<String>? stringsInformation;

  Androguard(
      {this.vTAndroidInfo,
      this.androidApplicationError,
      this.minSdkVersion,
      this.androguardVersion,
      // this.activities,
      this.certificate,
      this.androidApplication,
      this.riskIndicator,
      this.services,
      this.androidVersionCode,
      this.mainActivity,
      this.package,
      this.intentFilters,
      this.androidVersionName,
      this.targetSdkVersion,
      this.androidApplicationInfo,
      this.providers,
      this.permissionDetails,
      this.receivers,
      this.stringsInformation});

  Androguard.fromJson(Map<String, dynamic> json) {
    vTAndroidInfo = json['VTAndroidInfo'];
    androidApplicationError = json['AndroidApplicationError'];
    minSdkVersion = json['MinSdkVersion'];
    androguardVersion = json['AndroguardVersion'];
    // activities = json['Activities'].cast<String>();
    certificate = json['certificate'] != null
        ? new Certificate.fromJson(json['certificate'])
        : null;
    androidApplication = json['AndroidApplication'];
    riskIndicator = json['RiskIndicator'] != null
        ? new RiskIndicator.fromJson(json['RiskIndicator'])
        : null;
    services = json['Services'].cast<String>();
    androidVersionCode = json['AndroidVersionCode'];
    mainActivity = json['main_activity'];
    package = json['Package'];
    intentFilters = json['intent_filters'] != null
        ? new IntentFilters.fromJson(json['intent_filters'])
        : null;
    androidVersionName = json['AndroidVersionName'];
    targetSdkVersion = json['TargetSdkVersion'];
    androidApplicationInfo = json['AndroidApplicationInfo'];
    // providers = json['Providers'].cast<String>();
    permissionDetails = json['permission_details'] != null
        ? new PermissionDetails.fromJson(json['permission_details'])
        : null;
    receivers = json['Receivers'].cast<String>();
    stringsInformation = json['StringsInformation'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['VTAndroidInfo'] = this.vTAndroidInfo;
    data['AndroidApplicationError'] = this.androidApplicationError;
    data['MinSdkVersion'] = this.minSdkVersion;
    data['AndroguardVersion'] = this.androguardVersion;
    // data['Activities'] = this.activities;
    if (this.certificate != null) {
      data['certificate'] = this.certificate!.toJson();
    }
    data['AndroidApplication'] = this.androidApplication;
    if (this.riskIndicator != null) {
      data['RiskIndicator'] = this.riskIndicator!.toJson();
    }
    data['Services'] = this.services;
    data['AndroidVersionCode'] = this.androidVersionCode;
    data['main_activity'] = this.mainActivity;
    data['Package'] = this.package;
    if (this.intentFilters != null) {
      data['intent_filters'] = this.intentFilters!.toJson();
    }
    data['AndroidVersionName'] = this.androidVersionName;
    data['TargetSdkVersion'] = this.targetSdkVersion;
    data['AndroidApplicationInfo'] = this.androidApplicationInfo;
    data['Providers'] = this.providers;
    if (this.permissionDetails != null) {
      data['permission_details'] = this.permissionDetails!.toJson();
    }
    data['Receivers'] = this.receivers;
    data['StringsInformation'] = this.stringsInformation;
    return data;
  }
}

class Certificate {
  Subject? subject;
  String? validto;
  String? serialnumber;
  String? thumbprint;
  String? validfrom;
  Subject? issuer;

  Certificate(
      {this.subject,
      this.validto,
      this.serialnumber,
      this.thumbprint,
      this.validfrom,
      this.issuer});

  Certificate.fromJson(Map<String, dynamic> json) {
    subject =
        json['Subject'] != null ? new Subject.fromJson(json['Subject']) : null;
    validto = json['validto'];
    serialnumber = json['serialnumber'];
    thumbprint = json['thumbprint'];
    validfrom = json['validfrom'];
    issuer =
        json['Issuer'] != null ? new Subject.fromJson(json['Issuer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.subject != null) {
      data['Subject'] = this.subject!.toJson();
    }
    data['validto'] = this.validto;
    data['serialnumber'] = this.serialnumber;
    data['thumbprint'] = this.thumbprint;
    data['validfrom'] = this.validfrom;
    if (this.issuer != null) {
      data['Issuer'] = this.issuer!.toJson();
    }
    return data;
  }
}

class Subject {
  String? dN;
  String? c;
  String? cN;
  String? l;
  String? o;
  String? sT;
  String? oU;

  Subject({this.dN, this.c, this.cN, this.l, this.o, this.sT, this.oU});

  Subject.fromJson(Map<String, dynamic> json) {
    dN = json['DN'];
    c = json['C'];
    cN = json['CN'];
    l = json['L'];
    o = json['O'];
    sT = json['ST'];
    oU = json['OU'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DN'] = this.dN;
    data['C'] = this.c;
    data['CN'] = this.cN;
    data['L'] = this.l;
    data['O'] = this.o;
    data['ST'] = this.sT;
    data['OU'] = this.oU;
    return data;
  }
}

class RiskIndicator {
  APK? aPK;
  PERM? pERM;

  RiskIndicator({this.aPK, this.pERM});

  RiskIndicator.fromJson(Map<String, dynamic> json) {
    aPK = json['APK'] != null ? new APK.fromJson(json['APK']) : null;
    pERM = json['PERM'] != null ? new PERM.fromJson(json['PERM']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aPK != null) {
      data['APK'] = this.aPK!.toJson();
    }
    if (this.pERM != null) {
      data['PERM'] = this.pERM!.toJson();
    }
    return data;
  }
}

class APK {
  int? dEX;

  APK({this.dEX});

  APK.fromJson(Map<String, dynamic> json) {
    dEX = json['DEX'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DEX'] = this.dEX;
    return data;
  }
}

class PERM {
  int? nORMAL;
  int? aPPOP;
  int? sIGNATURE;
  int? sYSTEM;
  int? dANGEROUS;
  int? iNTERNET;

  PERM(
      {this.nORMAL,
      this.aPPOP,
      this.sIGNATURE,
      this.sYSTEM,
      this.dANGEROUS,
      this.iNTERNET});

  PERM.fromJson(Map<String, dynamic> json) {
    nORMAL = json['NORMAL'];
    aPPOP = json['APPOP'];
    sIGNATURE = json['SIGNATURE'];
    sYSTEM = json['SYSTEM'];
    dANGEROUS = json['DANGEROUS'];
    iNTERNET = json['INTERNET'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NORMAL'] = this.nORMAL;
    data['APPOP'] = this.aPPOP;
    data['SIGNATURE'] = this.sIGNATURE;
    data['SYSTEM'] = this.sYSTEM;
    data['DANGEROUS'] = this.dANGEROUS;
    data['INTERNET'] = this.iNTERNET;
    return data;
  }
}

class IntentFilters {
  Activities? activities;
  Receivers? receivers;

  IntentFilters({this.activities, this.receivers});

  IntentFilters.fromJson(Map<String, dynamic> json) {
    activities = json['Activities'] != null
        ? new Activities.fromJson(json['Activities'])
        : null;
    receivers = json['Receivers'] != null
        ? new Receivers.fromJson(json['Receivers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.activities != null) {
      data['Activities'] = this.activities!.toJson();
    }
    if (this.receivers != null) {
      data['Receivers'] = this.receivers!.toJson();
    }
    return data;
  }
}

class Activities {
  ComSaverBatterymobiMainActivity? comSaverBatterymobiMainActivity;

  Activities({this.comSaverBatterymobiMainActivity});

  Activities.fromJson(Map<String, dynamic> json) {
    comSaverBatterymobiMainActivity =
        json['com.saver.batterymobi.MainActivity'] != null
            ? new ComSaverBatterymobiMainActivity.fromJson(
                json['com.saver.batterymobi.MainActivity'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.comSaverBatterymobiMainActivity != null) {
      data['com.saver.batterymobi.MainActivity'] =
          this.comSaverBatterymobiMainActivity!.toJson();
    }
    return data;
  }
}

class ComSaverBatterymobiMainActivity {
  List<String>? action;
  List<String>? category;

  ComSaverBatterymobiMainActivity({this.action, this.category});

  ComSaverBatterymobiMainActivity.fromJson(Map<String, dynamic> json) {
    action = json['action'].cast<String>();
    category = json['category'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['action'] = this.action;
    data['category'] = this.category;
    return data;
  }
}

class Receivers {
  ComSaverBatterymobiMainActivity? comSaverBatterymobiLkjDsfBrt;

  Receivers({this.comSaverBatterymobiLkjDsfBrt});

  Receivers.fromJson(Map<String, dynamic> json) {
    comSaverBatterymobiLkjDsfBrt =
        json['com.saver.batterymobi.lkj.dsf.brt'] != null
            ? new ComSaverBatterymobiMainActivity.fromJson(
                json['com.saver.batterymobi.lkj.dsf.brt'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.comSaverBatterymobiLkjDsfBrt != null) {
      data['com.saver.batterymobi.lkj.dsf.brt'] =
          this.comSaverBatterymobiLkjDsfBrt!.toJson();
    }
    return data;
  }
}

class PermissionDetails {
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS?
      androidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS;
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS?
      androidPermissionREADEXTERNALSTORAGE;
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS?
      androidPermissionRECEIVEBOOTCOMPLETED;
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS?
      androidPermissionINSTALLPACKAGES;
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS?
      androidPermissionREQUESTINSTALLPACKAGES;
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS? androidPermissionINTERNET;
  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS?
      androidPermissionWRITEEXTERNALSTORAGE;

  PermissionDetails(
      {this.androidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS,
      this.androidPermissionREADEXTERNALSTORAGE,
      this.androidPermissionRECEIVEBOOTCOMPLETED,
      this.androidPermissionINSTALLPACKAGES,
      this.androidPermissionREQUESTINSTALLPACKAGES,
      this.androidPermissionINTERNET,
      this.androidPermissionWRITEEXTERNALSTORAGE});

  PermissionDetails.fromJson(Map<String, dynamic> json) {
    androidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS =
        json['android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS'] != null
            ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
                json['android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS'])
            : null;
    androidPermissionREADEXTERNALSTORAGE =
        json['android.permission.READ_EXTERNAL_STORAGE'] != null
            ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
                json['android.permission.READ_EXTERNAL_STORAGE'])
            : null;
    androidPermissionRECEIVEBOOTCOMPLETED =
        json['android.permission.RECEIVE_BOOT_COMPLETED'] != null
            ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
                json['android.permission.RECEIVE_BOOT_COMPLETED'])
            : null;
    androidPermissionINSTALLPACKAGES =
        json['android.permission.INSTALL_PACKAGES'] != null
            ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
                json['android.permission.INSTALL_PACKAGES'])
            : null;
    androidPermissionREQUESTINSTALLPACKAGES =
        json['android.permission.REQUEST_INSTALL_PACKAGES'] != null
            ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
                json['android.permission.REQUEST_INSTALL_PACKAGES'])
            : null;
    androidPermissionINTERNET = json['android.permission.INTERNET'] != null
        ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
            json['android.permission.INTERNET'])
        : null;
    androidPermissionWRITEEXTERNALSTORAGE =
        json['android.permission.WRITE_EXTERNAL_STORAGE'] != null
            ? new AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
                json['android.permission.WRITE_EXTERNAL_STORAGE'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.androidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS != null) {
      data['android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS'] =
          this.androidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS!.toJson();
    }
    if (this.androidPermissionREADEXTERNALSTORAGE != null) {
      data['android.permission.READ_EXTERNAL_STORAGE'] =
          this.androidPermissionREADEXTERNALSTORAGE!.toJson();
    }
    if (this.androidPermissionRECEIVEBOOTCOMPLETED != null) {
      data['android.permission.RECEIVE_BOOT_COMPLETED'] =
          this.androidPermissionRECEIVEBOOTCOMPLETED!.toJson();
    }
    if (this.androidPermissionINSTALLPACKAGES != null) {
      data['android.permission.INSTALL_PACKAGES'] =
          this.androidPermissionINSTALLPACKAGES!.toJson();
    }
    if (this.androidPermissionREQUESTINSTALLPACKAGES != null) {
      data['android.permission.REQUEST_INSTALL_PACKAGES'] =
          this.androidPermissionREQUESTINSTALLPACKAGES!.toJson();
    }
    if (this.androidPermissionINTERNET != null) {
      data['android.permission.INTERNET'] =
          this.androidPermissionINTERNET!.toJson();
    }
    if (this.androidPermissionWRITEEXTERNALSTORAGE != null) {
      data['android.permission.WRITE_EXTERNAL_STORAGE'] =
          this.androidPermissionWRITEEXTERNALSTORAGE!.toJson();
    }
    return data;
  }
}

class AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS {
  String? shortDescription;
  String? fullDescription;
  String? permissionType;

  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS(
      {this.shortDescription, this.fullDescription, this.permissionType});

  AndroidPermissionREQUESTIGNOREBATTERYOPTIMIZATIONS.fromJson(
      Map<String, dynamic> json) {
    shortDescription = json['short_description'];
    fullDescription = json['full_description'];
    permissionType = json['permission_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['short_description'] = this.shortDescription;
    data['full_description'] = this.fullDescription;
    data['permission_type'] = this.permissionType;
    return data;
  }
}

class LastAnalysisStats {
  int? harmless;
  int? typeUnsupported;
  int? suspicious;
  int? confirmedTimeout;
  int? timeout;
  int? failure;
  int? malicious;
  int? undetected;

  LastAnalysisStats(
      {this.harmless,
      this.typeUnsupported,
      this.suspicious,
      this.confirmedTimeout,
      this.timeout,
      this.failure,
      this.malicious,
      this.undetected});

  LastAnalysisStats.fromJson(Map<String, dynamic> json) {
    harmless = json['harmless'];
    typeUnsupported = json['type-unsupported'];
    suspicious = json['suspicious'];
    confirmedTimeout = json['confirmed-timeout'];
    timeout = json['timeout'];
    failure = json['failure'];
    malicious = json['malicious'];
    undetected = json['undetected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['harmless'] = this.harmless;
    data['type-unsupported'] = this.typeUnsupported;
    data['suspicious'] = this.suspicious;
    data['confirmed-timeout'] = this.confirmedTimeout;
    data['timeout'] = this.timeout;
    data['failure'] = this.failure;
    data['malicious'] = this.malicious;
    data['undetected'] = this.undetected;
    return data;
  }
}

class Links {
  String? self;

  Links({this.self});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    return data;
  }
}
