import 'package:flutter/material.dart';

void main() {

 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
 Widget titleSection = Container(
 padding: const EdgeInsets.all(32),
 child: Row(
 children: [
 Expanded(
        
 child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: [
              
 Container(
 padding: const EdgeInsets.only(bottom: 8),
 child: const Text(
 'Общежитие №20',
 style: TextStyle(
                   fontWeight: FontWeight.bold,
                    ),
                    ),
                    ),
                    Text(
                    'Краснодар, ул. Калинина, 13',
                     style: TextStyle(
                     color: Colors.grey[500],
                    ),
                    ),
                    ],
                    ),
                    ),
          
            Icon(
            Icons.favorite,
            color: Colors.red[500],
             ),
            const Text('27'),
            ],
            ),
            );

    Color color = Colors.green;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _knopki(color, Icons.call, 'Позвонить'),
        _knopki(color, Icons.near_me, 'Маршрут'),
        _knopki(color, Icons.share, 'Поделиться'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати '
        'общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех'
        'нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В  '
        'соответствии с Положением о студенческих общежитиях университета, при поселении '
        'между администрацией и студентами заключается договор найма жилого помещения.  '
        'Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил'
        'внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия '
  'проживания в общежитиях университетского кампуса полностью отвечают санитарным '
  'нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, '
  'читальных залов, комнат самоподготовки, помещений для заседаний студенческих'
  'советов и наглядной агитации. С целью улучшения условий быта студентов активно'
  'работает система студенческого самоуправления - студенческие советы организуют всю '
  'работу по самообслуживанию.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'ЛР3',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Общежития КубГАУ'),
    backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/kub.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _knopki(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}