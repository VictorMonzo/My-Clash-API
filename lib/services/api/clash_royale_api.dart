import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_clash_api/models/client_error.dart';
import 'package:my_clash_api/models/player.dart';

import 'package:http/http.dart' as http;
import 'package:my_clash_api/services/my_functions.dart';

const baseUrl = 'api.clashroyale.com';
const token =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImNkY2U1NzlkLTZlM2MtNGQ1NC05NzFhLTljYTRhOTViNGQzOSIsImlhdCI6MTY1Mzk4NjYwOCwic3ViIjoiZGV2ZWxvcGVyL2RhNTI4ZWIwLTVlMzktYjEwYy0wYzlhLTI0YmQ3NTJkNGY5OSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxODUuMTI2LjIzNS4yIl0sInR5cGUiOiJjbGllbnQifV19.Vdh03jbR4JFNyiyrtHd4l3VtM1i0oiRFABk3YI_csEAhUUi3jfH-Bi7lLl4CzUtTC8QJnsqfQe8-EWn9ECnAog';
const header = {'Authorization': 'Bearer $token'};

Future<Player?> getPlayer(String tag) async {
  final url = Uri.https(baseUrl, '/v1/players/$tag');
  final response = await http.get(url, headers: header);
  final responseJson = json.decode(response.body);
  if (response.statusCode == HttpStatus.ok) {
    return Player.fromJson(responseJson);
  } else {
    showToastError(responseJson['reason']);
    return null;
  }
}
