class UserModel {
  late final String? warningMessage;
  late final int? pageNumber;
  late final bool? isError;
  late final String? errorCode;
  late final String? message;

  late final DataModel dataModel;

  UserModel({
    this.warningMessage,
    this.pageNumber,
    this.isError,
    required this.errorCode,
    required this.message,
    required this.dataModel,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      warningMessage: json['warningMessage'],
      pageNumber: json['pageNumber'],
      isError: json['isError'],
      errorCode: json['errorCode'],
      message: json['message'],
      dataModel: DataModel.fromJson(json['DataModel']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['DataModel'] = dataModel.toJson();
    data['warningMessage'] = warningMessage;
    data['pageNumber'] = pageNumber;
    data['isError'] = isError;
    data['errorCode'] = errorCode;
    data['message'] = message;
    return data;
  }
}

class DataModel {
  DataModel({
    required this.userName,
    required this.loginUserName,
    required this.userId,
    required this.userRole,
    required this.userGroupId,
    required this.isSupervisor,
    required this.isAdmin,
    required this.newToken,
    required this.oldToken,
    required this.isBranchUnit,
    required this.isSingleBranchUnit,
    required this.isSingleUnit,
    required this.isSingleBranch,
    required this.branchName,
    required this.unitName,
    required this.branchId,
    required this.unitId,
    required this.yearId,
    required this.startDate,
    required this.endDate,
    this.companyName,
    required this.gstStateId,
    required this.currentDate,
    required this.isFirstYear,
    required this.isLastYear,
    this.expenseEqu,
    required this.itemEntConfig,
    required this.isDevVersion,
    this.cmpStringBasedSetup,
  });

  late final String userName;
  late final String loginUserName;
  late final int userId;
  late final int userRole;
  late final int userGroupId;
  late final bool isSupervisor;
  late final bool isAdmin;
  late final String newToken;
  late final String oldToken;
  late final bool isBranchUnit;
  late final bool isSingleBranchUnit;
  late final bool isSingleUnit;
  late final bool isSingleBranch;
  late final String branchName;
  late final String unitName;
  late final int branchId;
  late final int unitId;
  late final int yearId;
  late final String startDate;
  late final String endDate;
  late final String? companyName;
  late final int gstStateId;
  late final String currentDate;
  late final bool isFirstYear;
  late final bool isLastYear;
  late final String? expenseEqu;
  late final String itemEntConfig;
  late final bool isDevVersion;
  late final String? cmpStringBasedSetup;

  DataModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    loginUserName = json['loginUserName'];
    userId = json['userId'];
    userRole = json['userRole'];
    userGroupId = json['userGroupId'];
    isSupervisor = json['isSupervisor'];
    isAdmin = json['isAdmin'];
    newToken = json['newToken'];
    oldToken = json['oldToken'];
    isBranchUnit = json['isBranchUnit'];
    isSingleBranchUnit = json['isSingleBranchUnit'];
    isSingleUnit = json['isSingleUnit'];
    isSingleBranch = json['isSingleBranch'];
    branchName = json['branchName'];
    unitName = json['unitName'];
    branchId = json['branchId'];
    unitId = json['unitId'];
    yearId = json['yearId'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    companyName = null;
    gstStateId = json['gstStateId'];
    currentDate = json['currentDate'];
    isFirstYear = json['isFirstYear'];
    isLastYear = json['isLastYear'];
    expenseEqu = null;
    itemEntConfig = json['itemEntConfig'];
    isDevVersion = json['isDevVersion'];
    cmpStringBasedSetup = null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userName'] = userName;
    data['loginUserName'] = loginUserName;
    data['userId'] = userId;
    data['userRole'] = userRole;
    data['userGroupId'] = userGroupId;
    data['isSupervisor'] = isSupervisor;
    data['isAdmin'] = isAdmin;
    data['newToken'] = newToken;
    data['oldToken'] = oldToken;
    data['isBranchUnit'] = isBranchUnit;
    data['isSingleBranchUnit'] = isSingleBranchUnit;
    data['isSingleUnit'] = isSingleUnit;
    data['isSingleBranch'] = isSingleBranch;
    data['branchName'] = branchName;
    data['unitName'] = unitName;
    data['branchId'] = branchId;
    data['unitId'] = unitId;
    data['yearId'] = yearId;
    data['startDate'] = startDate;
    data['endDate'] = endDate;
    data['companyName'] = companyName;
    data['gstStateId'] = gstStateId;
    data['currentDate'] = currentDate;
    data['isFirstYear'] = isFirstYear;
    data['isLastYear'] = isLastYear;
    data['expenseEqu'] = expenseEqu;
    data['itemEntConfig'] = itemEntConfig;
    data['isDevVersion'] = isDevVersion;
    data['cmpStringBasedSetup'] = cmpStringBasedSetup;
    return data;
  }
}
