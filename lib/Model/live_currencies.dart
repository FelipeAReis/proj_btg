class LiveCurrencies {
  bool success;
  String terms;
  String privacy;
  int timestamp;
  String source;
  Quotes quotes;

  LiveCurrencies(
      {this.success,
      this.terms,
      this.privacy,
      this.timestamp,
      this.source,
      this.quotes});

  LiveCurrencies.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    terms = json['terms'];
    privacy = json['privacy'];
    timestamp = json['timestamp'];
    source = json['source'];
    quotes =
        json['quotes'] != null ? new Quotes.fromJson(json['quotes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['terms'] = this.terms;
    data['privacy'] = this.privacy;
    data['timestamp'] = this.timestamp;
    data['source'] = this.source;
    if (this.quotes != null) {
      data['quotes'] = this.quotes.toJson();
    }
    return data;
  }
}

class Quotes {
  double uSDAED;
  double uSDAFN;
  double uSDALL;
  double uSDAMD;
  double uSDANG;
  double uSDAOA;
  double uSDARS;
  double uSDAUD;
  double uSDAWG;
  double uSDAZN;
  double uSDBAM;
  double uSDBBD;
  double uSDBDT;
  double uSDBGN;
  double uSDBHD;
  double uSDBIF;
  int uSDBMD;
  double uSDBND;
  double uSDBOB;
  double uSDBRL;
  double uSDBSD;
  double uSDBTC;
  double uSDBTN;
  double uSDBWP;
  double uSDBYN;
  int uSDBYR;
  double uSDBZD;
  double uSDCAD;
  double uSDCDF;
  double uSDCHF;
  double uSDCLF;
  double uSDCLP;
  double uSDCNY;
  double uSDCOP;
  double uSDCRC;
  int uSDCUC;
  double uSDCUP;
  double uSDCVE;
  double uSDCZK;
  double uSDDJF;
  double uSDDKK;
  double uSDDOP;
  double uSDDZD;
  double uSDEGP;
  double uSDERN;
  double uSDETB;
  double uSDEUR;
  double uSDFJD;
  double uSDFKP;
  double uSDGBP;
  double uSDGEL;
  double uSDGGP;
  double uSDGHS;
  double uSDGIP;
  double uSDGMD;
  double uSDGNF;
  double uSDGTQ;
  double uSDGYD;
  double uSDHKD;
  double uSDHNL;
  double uSDHRK;
  double uSDHTG;
  double uSDHUF;
  double uSDIDR;
  double uSDILS;
  double uSDIMP;
  double uSDINR;
  double uSDIQD;
  double uSDIRR;
  double uSDISK;
  double uSDJEP;
  double uSDJMD;
  double uSDJOD;
  double uSDJPY;
  double uSDKES;
  double uSDKGS;
  double uSDKHR;
  double uSDKMF;
  double uSDKPW;
  double uSDKRW;
  double uSDKWD;
  double uSDKYD;
  double uSDKZT;
  double uSDLAK;
  double uSDLBP;
  double uSDLKR;
  double uSDLRD;
  double uSDLSL;
  double uSDLTL;
  double uSDLVL;
  double uSDLYD;
  double uSDMAD;
  double uSDMDL;
  double uSDMGA;
  double uSDMKD;
  double uSDMMK;
  double uSDMNT;
  double uSDMOP;
  double uSDMRO;
  double uSDMUR;
  double uSDMVR;
  double uSDMWK;
  double uSDMXN;
  double uSDMYR;
  double uSDMZN;
  double uSDNAD;
  double uSDNGN;
  double uSDNIO;
  double uSDNOK;
  double uSDNPR;
  double uSDNZD;
  double uSDOMR;
  double uSDPAB;
  double uSDPEN;
  double uSDPGK;
  double uSDPHP;
  double uSDPKR;
  double uSDPLN;
  double uSDPYG;
  double uSDQAR;
  double uSDRON;
  double uSDRSD;
  double uSDRUB;
  double uSDRWF;
  double uSDSAR;
  double uSDSBD;
  double uSDSCR;
  double uSDSDG;
  double uSDSEK;
  double uSDSGD;
  double uSDSHP;
  double uSDSLL;
  double uSDSOS;
  double uSDSRD;
  double uSDSTD;
  double uSDSVC;
  double uSDSYP;
  double uSDSZL;
  double uSDTHB;
  double uSDTJS;
  double uSDTMT;
  double uSDTND;
  double uSDTOP;
  double uSDTRY;
  double uSDTTD;
  double uSDTWD;
  double uSDTZS;
  double uSDUAH;
  double uSDUGX;
  int uSDUSD;
  double uSDUYU;
  double uSDUZS;
  double uSDVEF;
  int uSDVND;
  double uSDVUV;
  double uSDWST;
  double uSDXAF;
  double uSDXAG;
  double uSDXAU;
  double uSDXCD;
  double uSDXDR;
  double uSDXOF;
  double uSDXPF;
  double uSDYER;
  double uSDZAR;
  double uSDZMK;
  double uSDZMW;
  double uSDZWL;

  Quotes(
      {this.uSDAED,
      this.uSDAFN,
      this.uSDALL,
      this.uSDAMD,
      this.uSDANG,
      this.uSDAOA,
      this.uSDARS,
      this.uSDAUD,
      this.uSDAWG,
      this.uSDAZN,
      this.uSDBAM,
      this.uSDBBD,
      this.uSDBDT,
      this.uSDBGN,
      this.uSDBHD,
      this.uSDBIF,
      this.uSDBMD,
      this.uSDBND,
      this.uSDBOB,
      this.uSDBRL,
      this.uSDBSD,
      this.uSDBTC,
      this.uSDBTN,
      this.uSDBWP,
      this.uSDBYN,
      this.uSDBYR,
      this.uSDBZD,
      this.uSDCAD,
      this.uSDCDF,
      this.uSDCHF,
      this.uSDCLF,
      this.uSDCLP,
      this.uSDCNY,
      this.uSDCOP,
      this.uSDCRC,
      this.uSDCUC,
      this.uSDCUP,
      this.uSDCVE,
      this.uSDCZK,
      this.uSDDJF,
      this.uSDDKK,
      this.uSDDOP,
      this.uSDDZD,
      this.uSDEGP,
      this.uSDERN,
      this.uSDETB,
      this.uSDEUR,
      this.uSDFJD,
      this.uSDFKP,
      this.uSDGBP,
      this.uSDGEL,
      this.uSDGGP,
      this.uSDGHS,
      this.uSDGIP,
      this.uSDGMD,
      this.uSDGNF,
      this.uSDGTQ,
      this.uSDGYD,
      this.uSDHKD,
      this.uSDHNL,
      this.uSDHRK,
      this.uSDHTG,
      this.uSDHUF,
      this.uSDIDR,
      this.uSDILS,
      this.uSDIMP,
      this.uSDINR,
      this.uSDIQD,
      this.uSDIRR,
      this.uSDISK,
      this.uSDJEP,
      this.uSDJMD,
      this.uSDJOD,
      this.uSDJPY,
      this.uSDKES,
      this.uSDKGS,
      this.uSDKHR,
      this.uSDKMF,
      this.uSDKPW,
      this.uSDKRW,
      this.uSDKWD,
      this.uSDKYD,
      this.uSDKZT,
      this.uSDLAK,
      this.uSDLBP,
      this.uSDLKR,
      this.uSDLRD,
      this.uSDLSL,
      this.uSDLTL,
      this.uSDLVL,
      this.uSDLYD,
      this.uSDMAD,
      this.uSDMDL,
      this.uSDMGA,
      this.uSDMKD,
      this.uSDMMK,
      this.uSDMNT,
      this.uSDMOP,
      this.uSDMRO,
      this.uSDMUR,
      this.uSDMVR,
      this.uSDMWK,
      this.uSDMXN,
      this.uSDMYR,
      this.uSDMZN,
      this.uSDNAD,
      this.uSDNGN,
      this.uSDNIO,
      this.uSDNOK,
      this.uSDNPR,
      this.uSDNZD,
      this.uSDOMR,
      this.uSDPAB,
      this.uSDPEN,
      this.uSDPGK,
      this.uSDPHP,
      this.uSDPKR,
      this.uSDPLN,
      this.uSDPYG,
      this.uSDQAR,
      this.uSDRON,
      this.uSDRSD,
      this.uSDRUB,
      this.uSDRWF,
      this.uSDSAR,
      this.uSDSBD,
      this.uSDSCR,
      this.uSDSDG,
      this.uSDSEK,
      this.uSDSGD,
      this.uSDSHP,
      this.uSDSLL,
      this.uSDSOS,
      this.uSDSRD,
      this.uSDSTD,
      this.uSDSVC,
      this.uSDSYP,
      this.uSDSZL,
      this.uSDTHB,
      this.uSDTJS,
      this.uSDTMT,
      this.uSDTND,
      this.uSDTOP,
      this.uSDTRY,
      this.uSDTTD,
      this.uSDTWD,
      this.uSDTZS,
      this.uSDUAH,
      this.uSDUGX,
      this.uSDUSD,
      this.uSDUYU,
      this.uSDUZS,
      this.uSDVEF,
      this.uSDVND,
      this.uSDVUV,
      this.uSDWST,
      this.uSDXAF,
      this.uSDXAG,
      this.uSDXAU,
      this.uSDXCD,
      this.uSDXDR,
      this.uSDXOF,
      this.uSDXPF,
      this.uSDYER,
      this.uSDZAR,
      this.uSDZMK,
      this.uSDZMW,
      this.uSDZWL});

  Quotes.fromJson(Map<String, dynamic> json) {
    uSDAED = json['USDAED'];
    uSDAFN = json['USDAFN'];
    uSDALL = json['USDALL'];
    uSDAMD = json['USDAMD'];
    uSDANG = json['USDANG'];
    uSDAOA = json['USDAOA'];
    uSDARS = json['USDARS'];
    uSDAUD = json['USDAUD'];
    uSDAWG = json['USDAWG'];
    uSDAZN = json['USDAZN'];
    uSDBAM = json['USDBAM'];
    uSDBBD = json['USDBBD'];
    uSDBDT = json['USDBDT'];
    uSDBGN = json['USDBGN'];
    uSDBHD = json['USDBHD'];
    uSDBIF = json['USDBIF'];
    uSDBMD = json['USDBMD'];
    uSDBND = json['USDBND'];
    uSDBOB = json['USDBOB'];
    uSDBRL = json['USDBRL'];
    uSDBSD = json['USDBSD'];
    uSDBTC = json['USDBTC'];
    uSDBTN = json['USDBTN'];
    uSDBWP = json['USDBWP'];
    uSDBYN = json['USDBYN'];
    uSDBYR = json['USDBYR'];
    uSDBZD = json['USDBZD'];
    uSDCAD = json['USDCAD'];
    uSDCDF = json['USDCDF'];
    uSDCHF = json['USDCHF'];
    uSDCLF = json['USDCLF'];
    uSDCLP = json['USDCLP'];
    uSDCNY = json['USDCNY'];
    uSDCOP = json['USDCOP'];
    uSDCRC = json['USDCRC'];
    uSDCUC = json['USDCUC'];
    uSDCUP = json['USDCUP'];
    uSDCVE = json['USDCVE'];
    uSDCZK = json['USDCZK'];
    uSDDJF = json['USDDJF'];
    uSDDKK = json['USDDKK'];
    uSDDOP = json['USDDOP'];
    uSDDZD = json['USDDZD'];
    uSDEGP = json['USDEGP'];
    uSDERN = json['USDERN'];
    uSDETB = json['USDETB'];
    uSDEUR = json['USDEUR'];
    uSDFJD = json['USDFJD'];
    uSDFKP = json['USDFKP'];
    uSDGBP = json['USDGBP'];
    uSDGEL = json['USDGEL'];
    uSDGGP = json['USDGGP'];
    uSDGHS = json['USDGHS'];
    uSDGIP = json['USDGIP'];
    uSDGMD = json['USDGMD'];
    uSDGNF = json['USDGNF'];
    uSDGTQ = json['USDGTQ'];
    uSDGYD = json['USDGYD'];
    uSDHKD = json['USDHKD'];
    uSDHNL = json['USDHNL'];
    uSDHRK = json['USDHRK'];
    uSDHTG = json['USDHTG'];
    uSDHUF = json['USDHUF'];
    uSDIDR = json['USDIDR'];
    uSDILS = json['USDILS'];
    uSDIMP = json['USDIMP'];
    uSDINR = json['USDINR'];
    uSDIQD = json['USDIQD'];
    uSDIRR = json['USDIRR'];
    uSDISK = json['USDISK'];
    uSDJEP = json['USDJEP'];
    uSDJMD = json['USDJMD'];
    uSDJOD = json['USDJOD'];
    uSDJPY = json['USDJPY'];
    uSDKES = json['USDKES'];
    uSDKGS = json['USDKGS'];
    uSDKHR = json['USDKHR'];
    uSDKMF = json['USDKMF'];
    uSDKPW = json['USDKPW'];
    uSDKRW = json['USDKRW'];
    uSDKWD = json['USDKWD'];
    uSDKYD = json['USDKYD'];
    uSDKZT = json['USDKZT'];
    uSDLAK = json['USDLAK'];
    uSDLBP = json['USDLBP'];
    uSDLKR = json['USDLKR'];
    uSDLRD = json['USDLRD'];
    uSDLSL = json['USDLSL'];
    uSDLTL = json['USDLTL'];
    uSDLVL = json['USDLVL'];
    uSDLYD = json['USDLYD'];
    uSDMAD = json['USDMAD'];
    uSDMDL = json['USDMDL'];
    uSDMGA = json['USDMGA'];
    uSDMKD = json['USDMKD'];
    uSDMMK = json['USDMMK'];
    uSDMNT = json['USDMNT'];
    uSDMOP = json['USDMOP'];
    uSDMRO = json['USDMRO'];
    uSDMUR = json['USDMUR'];
    uSDMVR = json['USDMVR'];
    uSDMWK = json['USDMWK'];
    uSDMXN = json['USDMXN'];
    uSDMYR = json['USDMYR'];
    uSDMZN = json['USDMZN'];
    uSDNAD = json['USDNAD'];
    uSDNGN = json['USDNGN'];
    uSDNIO = json['USDNIO'];
    uSDNOK = json['USDNOK'];
    uSDNPR = json['USDNPR'];
    uSDNZD = json['USDNZD'];
    uSDOMR = json['USDOMR'];
    uSDPAB = json['USDPAB'];
    uSDPEN = json['USDPEN'];
    uSDPGK = json['USDPGK'];
    uSDPHP = json['USDPHP'];
    uSDPKR = json['USDPKR'];
    uSDPLN = json['USDPLN'];
    uSDPYG = json['USDPYG'];
    uSDQAR = json['USDQAR'];
    uSDRON = json['USDRON'];
    uSDRSD = json['USDRSD'];
    uSDRUB = json['USDRUB'];
    uSDRWF = json['USDRWF'];
    uSDSAR = json['USDSAR'];
    uSDSBD = json['USDSBD'];
    uSDSCR = json['USDSCR'];
    uSDSDG = json['USDSDG'];
    uSDSEK = json['USDSEK'];
    uSDSGD = json['USDSGD'];
    uSDSHP = json['USDSHP'];
    uSDSLL = json['USDSLL'];
    uSDSOS = json['USDSOS'];
    uSDSRD = json['USDSRD'];
    uSDSTD = json['USDSTD'];
    uSDSVC = json['USDSVC'];
    uSDSYP = json['USDSYP'];
    uSDSZL = json['USDSZL'];
    uSDTHB = json['USDTHB'];
    uSDTJS = json['USDTJS'];
    uSDTMT = json['USDTMT'];
    uSDTND = json['USDTND'];
    uSDTOP = json['USDTOP'];
    uSDTRY = json['USDTRY'];
    uSDTTD = json['USDTTD'];
    uSDTWD = json['USDTWD'];
    uSDTZS = json['USDTZS'];
    uSDUAH = json['USDUAH'];
    uSDUGX = json['USDUGX'];
    uSDUSD = json['USDUSD'];
    uSDUYU = json['USDUYU'];
    uSDUZS = json['USDUZS'];
    uSDVEF = json['USDVEF'];
    uSDVND = json['USDVND'];
    uSDVUV = json['USDVUV'];
    uSDWST = json['USDWST'];
    uSDXAF = json['USDXAF'];
    uSDXAG = json['USDXAG'];
    uSDXAU = json['USDXAU'];
    uSDXCD = json['USDXCD'];
    uSDXDR = json['USDXDR'];
    uSDXOF = json['USDXOF'];
    uSDXPF = json['USDXPF'];
    uSDYER = json['USDYER'];
    uSDZAR = json['USDZAR'];
    uSDZMK = json['USDZMK'];
    uSDZMW = json['USDZMW'];
    uSDZWL = json['USDZWL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USDAED'] = this.uSDAED;
    data['USDAFN'] = this.uSDAFN;
    data['USDALL'] = this.uSDALL;
    data['USDAMD'] = this.uSDAMD;
    data['USDANG'] = this.uSDANG;
    data['USDAOA'] = this.uSDAOA;
    data['USDARS'] = this.uSDARS;
    data['USDAUD'] = this.uSDAUD;
    data['USDAWG'] = this.uSDAWG;
    data['USDAZN'] = this.uSDAZN;
    data['USDBAM'] = this.uSDBAM;
    data['USDBBD'] = this.uSDBBD;
    data['USDBDT'] = this.uSDBDT;
    data['USDBGN'] = this.uSDBGN;
    data['USDBHD'] = this.uSDBHD;
    data['USDBIF'] = this.uSDBIF;
    data['USDBMD'] = this.uSDBMD;
    data['USDBND'] = this.uSDBND;
    data['USDBOB'] = this.uSDBOB;
    data['USDBRL'] = this.uSDBRL;
    data['USDBSD'] = this.uSDBSD;
    data['USDBTC'] = this.uSDBTC;
    data['USDBTN'] = this.uSDBTN;
    data['USDBWP'] = this.uSDBWP;
    data['USDBYN'] = this.uSDBYN;
    data['USDBYR'] = this.uSDBYR;
    data['USDBZD'] = this.uSDBZD;
    data['USDCAD'] = this.uSDCAD;
    data['USDCDF'] = this.uSDCDF;
    data['USDCHF'] = this.uSDCHF;
    data['USDCLF'] = this.uSDCLF;
    data['USDCLP'] = this.uSDCLP;
    data['USDCNY'] = this.uSDCNY;
    data['USDCOP'] = this.uSDCOP;
    data['USDCRC'] = this.uSDCRC;
    data['USDCUC'] = this.uSDCUC;
    data['USDCUP'] = this.uSDCUP;
    data['USDCVE'] = this.uSDCVE;
    data['USDCZK'] = this.uSDCZK;
    data['USDDJF'] = this.uSDDJF;
    data['USDDKK'] = this.uSDDKK;
    data['USDDOP'] = this.uSDDOP;
    data['USDDZD'] = this.uSDDZD;
    data['USDEGP'] = this.uSDEGP;
    data['USDERN'] = this.uSDERN;
    data['USDETB'] = this.uSDETB;
    data['USDEUR'] = this.uSDEUR;
    data['USDFJD'] = this.uSDFJD;
    data['USDFKP'] = this.uSDFKP;
    data['USDGBP'] = this.uSDGBP;
    data['USDGEL'] = this.uSDGEL;
    data['USDGGP'] = this.uSDGGP;
    data['USDGHS'] = this.uSDGHS;
    data['USDGIP'] = this.uSDGIP;
    data['USDGMD'] = this.uSDGMD;
    data['USDGNF'] = this.uSDGNF;
    data['USDGTQ'] = this.uSDGTQ;
    data['USDGYD'] = this.uSDGYD;
    data['USDHKD'] = this.uSDHKD;
    data['USDHNL'] = this.uSDHNL;
    data['USDHRK'] = this.uSDHRK;
    data['USDHTG'] = this.uSDHTG;
    data['USDHUF'] = this.uSDHUF;
    data['USDIDR'] = this.uSDIDR;
    data['USDILS'] = this.uSDILS;
    data['USDIMP'] = this.uSDIMP;
    data['USDINR'] = this.uSDINR;
    data['USDIQD'] = this.uSDIQD;
    data['USDIRR'] = this.uSDIRR;
    data['USDISK'] = this.uSDISK;
    data['USDJEP'] = this.uSDJEP;
    data['USDJMD'] = this.uSDJMD;
    data['USDJOD'] = this.uSDJOD;
    data['USDJPY'] = this.uSDJPY;
    data['USDKES'] = this.uSDKES;
    data['USDKGS'] = this.uSDKGS;
    data['USDKHR'] = this.uSDKHR;
    data['USDKMF'] = this.uSDKMF;
    data['USDKPW'] = this.uSDKPW;
    data['USDKRW'] = this.uSDKRW;
    data['USDKWD'] = this.uSDKWD;
    data['USDKYD'] = this.uSDKYD;
    data['USDKZT'] = this.uSDKZT;
    data['USDLAK'] = this.uSDLAK;
    data['USDLBP'] = this.uSDLBP;
    data['USDLKR'] = this.uSDLKR;
    data['USDLRD'] = this.uSDLRD;
    data['USDLSL'] = this.uSDLSL;
    data['USDLTL'] = this.uSDLTL;
    data['USDLVL'] = this.uSDLVL;
    data['USDLYD'] = this.uSDLYD;
    data['USDMAD'] = this.uSDMAD;
    data['USDMDL'] = this.uSDMDL;
    data['USDMGA'] = this.uSDMGA;
    data['USDMKD'] = this.uSDMKD;
    data['USDMMK'] = this.uSDMMK;
    data['USDMNT'] = this.uSDMNT;
    data['USDMOP'] = this.uSDMOP;
    data['USDMRO'] = this.uSDMRO;
    data['USDMUR'] = this.uSDMUR;
    data['USDMVR'] = this.uSDMVR;
    data['USDMWK'] = this.uSDMWK;
    data['USDMXN'] = this.uSDMXN;
    data['USDMYR'] = this.uSDMYR;
    data['USDMZN'] = this.uSDMZN;
    data['USDNAD'] = this.uSDNAD;
    data['USDNGN'] = this.uSDNGN;
    data['USDNIO'] = this.uSDNIO;
    data['USDNOK'] = this.uSDNOK;
    data['USDNPR'] = this.uSDNPR;
    data['USDNZD'] = this.uSDNZD;
    data['USDOMR'] = this.uSDOMR;
    data['USDPAB'] = this.uSDPAB;
    data['USDPEN'] = this.uSDPEN;
    data['USDPGK'] = this.uSDPGK;
    data['USDPHP'] = this.uSDPHP;
    data['USDPKR'] = this.uSDPKR;
    data['USDPLN'] = this.uSDPLN;
    data['USDPYG'] = this.uSDPYG;
    data['USDQAR'] = this.uSDQAR;
    data['USDRON'] = this.uSDRON;
    data['USDRSD'] = this.uSDRSD;
    data['USDRUB'] = this.uSDRUB;
    data['USDRWF'] = this.uSDRWF;
    data['USDSAR'] = this.uSDSAR;
    data['USDSBD'] = this.uSDSBD;
    data['USDSCR'] = this.uSDSCR;
    data['USDSDG'] = this.uSDSDG;
    data['USDSEK'] = this.uSDSEK;
    data['USDSGD'] = this.uSDSGD;
    data['USDSHP'] = this.uSDSHP;
    data['USDSLL'] = this.uSDSLL;
    data['USDSOS'] = this.uSDSOS;
    data['USDSRD'] = this.uSDSRD;
    data['USDSTD'] = this.uSDSTD;
    data['USDSVC'] = this.uSDSVC;
    data['USDSYP'] = this.uSDSYP;
    data['USDSZL'] = this.uSDSZL;
    data['USDTHB'] = this.uSDTHB;
    data['USDTJS'] = this.uSDTJS;
    data['USDTMT'] = this.uSDTMT;
    data['USDTND'] = this.uSDTND;
    data['USDTOP'] = this.uSDTOP;
    data['USDTRY'] = this.uSDTRY;
    data['USDTTD'] = this.uSDTTD;
    data['USDTWD'] = this.uSDTWD;
    data['USDTZS'] = this.uSDTZS;
    data['USDUAH'] = this.uSDUAH;
    data['USDUGX'] = this.uSDUGX;
    data['USDUSD'] = this.uSDUSD;
    data['USDUYU'] = this.uSDUYU;
    data['USDUZS'] = this.uSDUZS;
    data['USDVEF'] = this.uSDVEF;
    data['USDVND'] = this.uSDVND;
    data['USDVUV'] = this.uSDVUV;
    data['USDWST'] = this.uSDWST;
    data['USDXAF'] = this.uSDXAF;
    data['USDXAG'] = this.uSDXAG;
    data['USDXAU'] = this.uSDXAU;
    data['USDXCD'] = this.uSDXCD;
    data['USDXDR'] = this.uSDXDR;
    data['USDXOF'] = this.uSDXOF;
    data['USDXPF'] = this.uSDXPF;
    data['USDYER'] = this.uSDYER;
    data['USDZAR'] = this.uSDZAR;
    data['USDZMK'] = this.uSDZMK;
    data['USDZMW'] = this.uSDZMW;
    data['USDZWL'] = this.uSDZWL;
    return data;
  }
}
