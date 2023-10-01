class ApiUtils {
  static late String authToken;

  static String loginAPI =
      "https://cloudqaapi.rkitsoftware.com/QAAPI/MRAPI/CLCMC01M/ValidateUser";

  static Map<String, dynamic> loginBodyData = {"C01103": "hp", "C01104": "123", "C01103R": 1};
}
