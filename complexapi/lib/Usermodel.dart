class Usermodel {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? refreshToken;
  String? asClientId;
  String? userID;
  String? role;
  String? fullName;
  String? userMenu;
  String? hfr;
  String? imagePath;
  String? branchId;
  String? isWeightRequire;
  String? issued;
  String? expires;

  Usermodel(
      {this.accessToken,
      this.tokenType,
      this.expiresIn,
      this.refreshToken,
      this.asClientId,
      this.userID,
      this.role,
      this.fullName,
      this.userMenu,
      this.hfr,
      this.imagePath,
      this.branchId,
      this.isWeightRequire,
      this.issued,
      this.expires});

  Usermodel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    refreshToken = json['refresh_token'];
    asClientId = json['as:client_id'];
    userID = json['userID'];
    role = json['role'];
    fullName = json['fullName'];
    userMenu = json['userMenu'];
    hfr = json['hfr'];
    imagePath = json['imagePath'];
    branchId = json['BranchId'];
    isWeightRequire = json['is_weight_require'];
    issued = json['.issued'];
    expires = json['.expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    data['refresh_token'] = this.refreshToken;
    data['as:client_id'] = this.asClientId;
    data['userID'] = this.userID;
    data['role'] = this.role;
    data['fullName'] = this.fullName;
    data['userMenu'] = this.userMenu;
    data['hfr'] = this.hfr;
    data['imagePath'] = this.imagePath;
    data['BranchId'] = this.branchId;
    data['is_weight_require'] = this.isWeightRequire;
    data['.issued'] = this.issued;
    data['.expires'] = this.expires;
    return data;
  }
}