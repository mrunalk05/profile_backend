import 'package:http/http.dart' as http;
import 'dart:convert';

class worker {
  String? id;
  String? userId;
  String? name;
  String? mobnum;
  String? email;
  String? ggn;
  String? famName;
  String? farmpMap;
  String? consName;
  String? profileId;
  String? profileUrl;
  List? plots;

  Future<void> getData() async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=&appid=1e9daa69c1df496ee8275c163e1721bf");
    var response = await http.get(url);
    Map data = jsonDecode(response.body);

    String getId = data['id'];
    String getUserId = data['userId'];
    String getName = data['name'];
    double getMobnum = data['mobileNumber'];
    String getEmail = data['email'];
    double getGgn = data['GGN'];
    String getFamName = data['familyName'];
    String getFarmMap = data['farmMap'];
    String getConsName = data['consultantName'];
    String getProfileId = data['profileId'];
    String getprofileUrl = data['profileUrl'];
    List getPlot = data['plots'];

    id = getId;
    userId = getUserId;
    name = getName;
    mobnum = getMobnum.toString();
    email = getEmail;
    ggn = getGgn.toString();
    farmpMap = getFarmMap;
    famName = getName;
    consName = getConsName;
    profileId = getProfileId;
    profileUrl = getprofileUrl;
    plots = getPlot;
  }
}
