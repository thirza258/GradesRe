import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'grades.dart';

class HttpHelper{
  String url = "http://localhost:3000/grades/";

  Future<List?> getNilai(String id) async {
    String nilai = url + id;
    http.Response result = await http.get(Uri.parse(url));

    if(result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final gradesMap = jsonResponse['data'];
      List grades = gradesMap.map((i) => Grades.fromJson(i)).toList();
      return grades;
    }
    else {
      return null;
    }
  }

}
