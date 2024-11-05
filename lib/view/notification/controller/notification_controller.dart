import 'package:get/get.dart';

class NotificationsController extends GetxController {
  final notifications = [
    {
      "date": "Recent",
      "items": [
        {
          "image": "assets/images/shirt4.png",
          "title": "Thanks you for\n purchasing",
          "subtitle": "Your order will be shipped in 2-4 days",
          "price": null,
          "discountedPrice": null,
          "time": "7 min ago"
        },
        {
          "image": "assets/images/shirt2.png",
          "title": "We Have New\n Products With Offers",
          "price": "364.95",
          "discountedPrice": "260.00",
          "time": "40 min ago"
        },
      ]
    },
    {
      "date": "Yesterday",
      "items": [
        {
          "image": "assets/images/shirt3.png",
          "title": "We Have New\n Products With Offers",
          "price": "364.95",
          "discountedPrice": "260.00",
          "time": "40 min ago"
        },
        {
          "image": "assets/images/shirt1.png",
          "title": "We Have New\n Products With Offers",
          "price": "364.95",
          "discountedPrice": "260.00",
          "time": "40 min ago"
        }
      ]
    }
  ].obs;
}
