
import 'package:learn_driving/data/models/categoy_model/sub_category_model.dart';

import '../data/models/category_model.dart';
abstract class ResourcesRepositories {
  Future<List<Category>> getCategoryResources();
  Future<List<Question>>  getSubCategoryResources(int categoryId);
}
