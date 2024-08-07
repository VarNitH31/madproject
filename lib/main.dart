import 'package:electroshop/Admin/add_product.dart';
import 'package:electroshop/Admin/admin_login.dart';
import 'package:electroshop/Admin/all_orders.dart';
import 'package:electroshop/Admin/home_admin.dart';
import 'package:electroshop/services/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:electroshop/pages/bottomnav.dart';
import 'package:electroshop/pages/home.dart';
import 'package:electroshop/pages/login.dart';
import 'package:electroshop/pages/onboarding.dart';
import 'package:electroshop/pages/productDetail.dart';
import 'package:electroshop/pages/signup.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'firebase_options.dart';



void main()async {
   WidgetsFlutterBinding.ensureInitialized();
   Stripe.publishableKey=publishableKey;
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,

      ),
      home: Bottomnav(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
 
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
    

          ],
        ),
      ),
   


    );
  }
}
