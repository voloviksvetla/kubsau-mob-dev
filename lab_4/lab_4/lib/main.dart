import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<String> _array = [];

  @override
  Widget build(BuildContext context) {

    return new ListView.builder(itemBuilder: (context, i){
      print('num $i : нечетное = ${i.isOdd}');

      if(i.isOdd) return new Divider();

      final int index = i~/2;
      final num chisl = pow(2,i);

      print('index $index');
      print('length ${_array.length}');

      
      if (index >= _array.length) _array.addAll(['$index', '${index + 1}', '${index + 2}']);

      return new ListTile(title: new Text('2^$i = $chisl'));
    });
  }
}

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Список элементов',
       theme: ThemeData(
         primarySwatch: Colors.green,
       ),
       home:Scaffold(
          appBar: AppBar(
           title: const Text('Список элементов'),
         ),
         body: new Center (child: new MyBody(),)
       ),
     );
   }

}