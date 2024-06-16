import'dart:convert';
import 'package:flutter/services.dart';

List server_info = [];
Future<void> readjson() async{

  final String server = await rootBundle.loadString('assets/serverinfo.json'); 
  final data = jsonDecode(server);
  server_info=data["iitk"];
}