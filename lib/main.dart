import 'package:app/Dtos/Providers/activities_provider.dart';
import 'package:app/Screens/screen_home.dart';
import 'package:app/Screens/screen_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         body: Center(
//           child: HomeScreen(),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ActivitiesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        // home: SplashScreen(),
        title: 'Prueba',
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          // '/home': (context) => const UserScreen(),
          // '/items': (context) => const Products(),
          // '/products': (context) => const ListsProductPage(),
        },
      ),
    );
  }
}
