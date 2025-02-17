
class CategoryModel {
   final String name;

   CategoryModel({
    required this.name
   });

  static  List<CategoryModel> initCategory(){

     List<CategoryModel>  category = [];
      category.add(CategoryModel(name: 'All'));
      category.add(CategoryModel(name: 'Vegetables'));
      category.add(CategoryModel(name: 'Fast food'));
      

      return category;
   }
}