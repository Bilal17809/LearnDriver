import 'dart:convert';
import 'package:learn_driving/data/data_sources/remote_data_resousce.dart';
import 'package:learn_driving/data/models/categoy_model/sub_category_model.dart';
import '../models/category_model.dart';
import 'package:http/http.dart' as http;

class RemoteResources extends RemoteDataResources {
  final String apiData='https://learn-driving-1ad82-default-rtdb.firebaseio.com/categories.json';
  @override
  Future<List<Category>> fetchCategory() async {
    try {
      final response = await http.get(
        Uri.parse(apiData),
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final List<Category> categories = data
            .map((item) => Category.fromMap(item as Map<String, dynamic>))
            .toList();

        return categories;
      } else {
        print("Error: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Exception occurred: $e");
      return [];
    }
  }

  @override
  Future<List<Question>> subCategory(int categoryId) async {
    try {
      final response = await http.get(
        Uri.parse('https://learn-driving-1ad82-default-rtdb.firebaseio.com/questions.json'),
      );

      if (response.statusCode != 200) {
        print("##### Error fetching questions: ${response.statusCode}");
        return [];
      }
      final List<dynamic> questionData = json.decode(response.body);
      final List<Question> questions = questionData
          .map((item) => Question.fromJson(item as Map<String, dynamic>))
          .where((question) => question.topicId == categoryId)
          .toList();

      return questions;
    } catch (e) {
      print("####### Exception occurred while fetching questions: $e");
      return [];
    }
  }

}
