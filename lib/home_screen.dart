import 'dart:convert';

import 'package:api_package/services/api_services.dart';
import 'package:api_package/utils/api_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Package"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ApiServices()
                  .post(ApiUtils.loginAPI,
                      data: jsonEncode(ApiUtils.loginBodyData))
                  .then((response) {
                debugPrint("Response Data: $response");
              }).catchError((error) {
                debugPrint("Error: $error");
              });
            },
            child: const Text("Login Button"),
          )
        ],
      ),
    );
  }
}
