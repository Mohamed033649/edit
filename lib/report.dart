import 'package:edit/oldpag.dart';
import 'package:flutter/material.dart';

class MedicalPagee extends StatefulWidget {
  @override
  _MedicalPageState createState() => _MedicalPageState();
}

class _MedicalPageState extends State<MedicalPagee> {
  String doctorName = '';
  String doctorPhone = '';
  String specialization = '';
  String diagnosis = '';
  String conditionReport = '';

  bool isNewSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('report Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                     
                    setState(() {
                      isNewSelected = true;
                    });
                  },
                  child: Text('New'),
                  color: isNewSelected ? Colors.blue : Colors.grey,
                ),
                SizedBox(width: 20),
                MaterialButton(
                  onPressed: () {
                     Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => MedicalPage()));
                    setState(() {
                      isNewSelected = false;
                    });
                  },
                  child: Text('Old'),
                  color: !isNewSelected ? Colors.blue : Colors.grey,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'اسم الدكتور: محمد احمد  $doctorName',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'رقم الهاتف:0102822525 $doctorPhone',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'التخصص:عظام $specialization',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "تشخيص الحالة:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                   Text(
                    "التاريخ : 22/4/2024",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        diagnosis = value;
                      });
                    },
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                    hintText: "عظام",

                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                   "تقرير الحالة   ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        conditionReport = value;
                      });
                    },
                    minLines: 5, // الحد الأدنى لعدد الأسطر
                    maxLines: 10, // الحد الأقصى لعدد الأسطر
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: "انك تعاني من التهاب حاد في المفاصل ويجب اخذ دواء وراحة لمدة اسبوعين ",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
