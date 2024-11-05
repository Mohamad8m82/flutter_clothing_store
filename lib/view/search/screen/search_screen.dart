import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/search_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Search_Controller controller = Get.put(Search_Controller());
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xffF7F7F9),
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Search",
            style: GoogleFonts.raleway(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff2B2B2B),
            ),
          ),
        ),
        backgroundColor: Color(0xffF7F7F9),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: Get.back,
          child: Transform.translate(
            offset: Offset(0, 6),
            child: Container(
              margin: EdgeInsets.only(left: 10.0, top: 6),
              width: 44.w,
              height: 44.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.25, top: 2.25),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff2B2B2B),
                  size: 18.sp,
                ),
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.back();
              print("delete");
            },
            child: Container(
              margin: EdgeInsets.only(right: 10, top: 22),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Get.back();
                    // هنا يمكنك إضافة الوظيفة التي ترغب في تنفيذها عند الضغط على النص "Cancel"
                  },
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.raleway(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff34C759),
                    ),
                  ),
                ),
              ),
            ),

          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            // شريط البحث
            Container(
              width: 380.w,
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("object");
                    },
                    child: Container(
                      width: 44.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Opacity(
                          opacity: 0.6,
                          child: ImageIcon(
                            AssetImage(
                              "assets/images/search_icon.png",
                            ),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search Your Shirt",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6A6A6A),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      onChanged: (value) {
                        controller.search(value); // تصفية النتائج
                      },
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/Rectangle 846.png",
                      width: 8.w,
                      height: 30.h,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("object");
                    },
                    child: Container(
                      width: 44.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Opacity(
                          opacity: 0.6,
                          child: ImageIcon(
                            AssetImage("assets/images/mic_icon.png"),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Shirt",
              style: GoogleFonts.raleway(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            // قائمة نتائج البحث
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.searchResults.isNotEmpty
                      ? controller.searchResults.length
                      : controller.recentSearches
                          .length, // إذا كانت نتائج البحث فارغة، نستخدم قائمة البحث الأخيرة
                  itemBuilder: (context, index) {
                    String displayText = controller.searchResults.isNotEmpty
                        ? controller.searchResults[index]
                        : controller.recentSearches[
                            index]; // استخدام النتائج الأخيرة عند عدم وجود نتائج بحث

                    return ListTile(
                      leading: Icon(Icons.access_time, color: Colors.grey),
                      title: Text(displayText),
                      onTap: () {
                        // يمكنك إضافة وظيفة النقر هنا
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
