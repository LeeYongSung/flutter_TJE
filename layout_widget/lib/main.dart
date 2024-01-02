import 'package:flutter/material.dart';
import 'package:layout_widget/models/animalItem.dart';
import 'package:layout_widget/screens/listview_screen.dart';
import 'package:layout_widget/screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:
//           // const ProductDetailScreen(),
//           const ListViewScreen(),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  // state
  List<Animal>? animalList;

  @override
  void initState() {
    super.initState();
    animalList?.add(Animal(
      imagePath: 'image/animal1.jpg',
      animalName: '고양이',
      kind: '포유류',
    ));
    animalList?.add(Animal(
      imagePath: 'image/animal1.jpg',
      animalName: '고양이',
      kind: '포유류',
    ));
    animalList?.add(Animal(
      imagePath: 'image/animal1.jpg',
      animalName: '고양이',
      kind: '포유류',
    ));
    animalList?.add(Animal(
      imagePath: 'image/animal1.jpg',
      animalName: '고양이',
      kind: '포유류',
    ));
    animalList?.add(Animal(
      imagePath: 'image/animal1.jpg',
      animalName: '고양이',
      kind: '포유류',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '리스트 뷰',
      home: ListViewScreen(),
    );
  }
}
