
import '../const_data/const_data.dart';

class AppLink{

   //remote address
   static String appRoot="https://"; // url server
static String ImageWithRoot= "$appRoot/storge"; //places of storge
static String ImageWithoutRoot="$appRoot";
static String serverApiRoot="$appRoot/api";

static String login="$serverApiRoot/login";
static String home="$serverApiRoot/home";
static String register="$serverApiRoot/register";
static String profile="$serverApiRoot/profile";

   //without token

  Map <String ,String>getHeader(){
   Map<String,String> mainHeader={
      'content-type':'application/jason', // form postman of backend
      'Accept':'application/jason', // form postman of backend
      'X-Requested-With':'XMLHttpRequest' // form postman of backend

   };
   return mainHeader;
   }

   Map <String ,String>getHeaderToken(){
     Map<String,String> mainHeader={
       'content-type':'application/jason', // form postman of backend
       'Accept':'application/jason', // form postman of backend
       'X-Requested-With':'XMLHttpRequest', // form postman of backend\
       "Authorizatoin":'Bearer${
           ConstData.accessTokenKey
       }'

     }; //with token

      return mainHeader;
   }
}


