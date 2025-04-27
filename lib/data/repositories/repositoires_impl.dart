import 'package:learn_driving/data/models/categoy_model/sub_category_model.dart';

import '../../repositories/resources_repositories.dart';
import '../data_sources/remote_data_resousce.dart';
import '../models/category_model.dart';

class ResourcesImplement extends ResourcesRepositories {
  final RemoteDataResources resourcesRepositories;

  ResourcesImplement({required this.resourcesRepositories});

  @override
  Future<List<Category>> getCategoryResources() async {
    return await resourcesRepositories.fetchCategory();
  }
  @override
  Future< List<Question>> getSubCategoryResources(int categoryId) async{
    return await resourcesRepositories.subCategory(categoryId);
  }
}

