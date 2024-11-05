import 'package:get/get.dart';

class Search_Controller extends GetxController {
  var searchResults = <String>[].obs;
  var recentSearches = <String>[].obs; // قائمة البحث الأخيرة

  // قائمة ثابتة من العناصر
  final List<String> items = [
    "New T-Shirt",
    "Top T-Shirt",
    "Programmer",
    "Shirt",
    "Black Shirt",
    "White Shirt",
  ];

  // وظيفة البحث
// وظيفة البحث
  void search(String query) {
    if (query.isNotEmpty) {
      // تصفية العناصر بناءً على النص المدخل
      searchResults.value = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();

      // إضافة الكلمة بالكامل إلى قائمة البحث الأخيرة إذا لم تكن موجودة بالفعل
      if (!recentSearches.contains(query)) {
        recentSearches.add(query); // أضف الكلمة بالكامل
      }
    } else {
      // إذا كان الحقل فارغًا، نعرض قائمة البحث الأخيرة
      searchResults.value = recentSearches;
    }
  }
}
