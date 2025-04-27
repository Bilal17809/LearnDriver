import '../models/category_model.dart';
import '../models/categoy_model/sub_category_model.dart';

abstract class RemoteDataResources{
  Future<List<Category>> fetchCategory();
  Future<List<Question>> subCategory(int categoryId);
}