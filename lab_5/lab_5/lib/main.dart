import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyFormState();
}
  class MyFormState extends State {
    final _formKey = GlobalKey<FormState>();
    late double _height;
    late double _width;
    String _result = "Задайте параметры";
  

  @override 
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [Form(
          child: Column (
            children: [
              Row(
                children: [
                  const Text('Ширина (мм):', style: TextStyle(fontSize: (20.0),),),
                  const SizedBox(width: 12),
                  Expanded(child: TextFormField(
                    style: const TextStyle(fontSize: 20),textAlign: TextAlign.center,
                    validator:(value){
                      if (_isNumeric(value)){
                        return "Задайте ширину";
                      }
                      setState(() {
                        _width = double.tryParse(value.toString())!;
                      });
                    }),
                    ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text('Высота (мм):', style: TextStyle(fontSize: (20.0),),),
                  const SizedBox(width:12),
                  Expanded (child: TextFormField(
                    style: const TextStyle(fontSize: 20),textAlign: TextAlign.center,
                    validator: (value){
                      if (_isNumeric(value)){
                        return "Задайте высоту";
                      }
                      setState(() {
                        _height = double.tryParse(value.toString())!;
                      });
                    })),
                ],
              ),
              const SizedBox(height:20),
              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()){
                  setState(() {
                    _result = "S = $_width * $_height = ${(_width * _height).toStringAsFixed(3)}(мм2)";
                  });

                } else {
                  setState(() {
                    _result = "задайте параметры";
                  });
                }
              },
              child: const Text("Вычислить",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20)))
            ],
            ),
            key: _formKey,
          ),
          const SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
              ),),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(_result,style: const TextStyle(fontSize:25,color:Colors.purple),textAlign:TextAlign.center, ))
          ]
          ),
    );
  }
}

bool _isNumeric(String? str){
  if (str == null){
    return false;
  }
  return double.tryParse(str) == null;
}

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: const Text("Форма ввода",),
    ),
    body: const MyForm(),
  ),
));
  
