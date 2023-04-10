import 'package:flutter/material.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/newui_allscreens/home_screen.dart';
import 'package:meditation_app/screens/settings/settingpage.dart';
import 'package:meditation_app/screens/splashscreen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

//int isviewed;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //isviewed = prefs.getInt('IntroScreen');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: SplashScreen(),
      // home: SplashScreen(),
      // home: isviewed != 0 ? IntroScreen() : BottemNavBar(),
    );
  }
}











// Online C compiler to run C program online
// #include <stdio.h>

// int main() {
//     int a=10,b=10,sum;

//     sum = a+b;
//     a==b ?
//         printf("%d",sum*3) :
//      printf("%d",sum);

//     return 0;
// }





// #include <stdio.h>

// int main() {
//     int a=50,b=10,answer;

//     answer = a-b;
//     a>b ?
//         printf("%d",answer*3) :
//      printf("%d",answer);

//     return 0;
// }




// #include <stdio.h>

// int main() {
//     int a=200,b=10;

//     if((a>=100 && a<=200) ||  (b>=100 && b<=200)){
//         printf("Sucsess");
//     }
//     else{
//         printf("Unsucess");
//     }


//     return 0;
// }



// #include <stdio.h>

// int main() {
//     int a=2,b=5;

//     if((a==5) ||  (b==5) || (a+b==5) || (a-b==5) || (b-a==5)){
//         printf("Sucsess");
//     }
//     else{
//         printf("Unsucess");
//     }


//     return 0;
// }







// #include <stdio.h>

// int main() {
//     int a=35,b=25;

//   if(a>=20 || b<=50){
//       printf("sucess");
//   }else{
//       printf("Unsucess");
//   }


//     return 0;
// }







// #include <stdio.h>

// int main() {
//     int a=5,b=15;

//   if(a>=10 && a<=20){
//       printf("value.....");
//   }else if(b>=10 && b<=20){
//       printf("value......");
//   }
//   else if(b<=10 && a-b>=10{
//       printf("value......");
//   }
//   else {
//       printf("%d",a+b,a-b);
//   }


//     return 0;
// }



//
// int main(){
//
//
//   int sideA,sideB,sideC;
//
//   printf("Enter side A");
//   scanf("%d",sideA);
//
//   printf("Enter side b");
//   scanf("%d",sideB);
//
//   printf("Enter side c");
//   scanf("%d",sidec);
//
//
//
//
//
//
//
// }