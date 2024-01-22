import 'package:exam_2/core/models/list_details_model.dart';
import 'package:http/http.dart' as http;

class ListDetails {
  Future<ListDetailsModel?> getalldetails(String token) async {
    try {
      final response = await http.get(
        Uri.parse('http://192.168.60.86:8001/v1/mak/user/01521216116'),
        headers: {
          'accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      ListDetailsModel listDetailsModel =
          listDetailsModelFromJson(response.body);
      print(response.body);
      return listDetailsModel;
    } catch (e) {
      print(e.toString());
    }
  }
}
