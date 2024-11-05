import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  final String discountedPrice;
  final String time;

  NotificationCard({
    required this.image,
    required this.title,
    this.subtitle = "",
    this.price = "",
    this.discountedPrice = "",
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 335.w,
        height: 105.h,
        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [

               Container(
                width: 87.w,
                height: 85.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0xffF7F7F9),
                ),
                child: Image.asset(
                  image,
                  width: 67.w,
                  height: 67.h,
                ),
              ),

            Expanded(
              // Wrap in Expanded to prevent overflow
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (subtitle.isNotEmpty)
                      Text(
                        "Your order will be shipped\nin 2-4 days", // هنا استخدم النص الكامل
                        style: GoogleFonts.poppins(
                          color: Color(0xff707B81),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow:
                            TextOverflow.visible, // التأكد من أن النص لا يقتطع
                        softWrap: true,
                        maxLines: 2, // يحدد الحد الأقصى لعدد الأسطر
                      ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        if (price.isNotEmpty && discountedPrice.isNotEmpty) ...[
                          Text(
                            "\$$price",
                            style: GoogleFonts.poppins(
                              color: Color(0xff2B2B2B),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "\$$discountedPrice",
                            style: GoogleFonts.poppins(
                              color: Color(0xff707B81),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, bottom: 65),
              child: Text(
                time,
                style: TextStyle(
                  color: Color(0xff707B81),
                  fontSize: 14.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
