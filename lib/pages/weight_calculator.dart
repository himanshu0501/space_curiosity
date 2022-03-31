import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _weightController = new TextEditingController();

  int radioValue = 0;
  double _finalResult = 0.0;
  String _formattedText = "";
  void handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          _finalResult = calculateWeigt(_weightController.text, 0.06);
          _formattedText =
              "Your weight on Pluto is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateWeigt(_weightController.text, 0.38);
          _formattedText =
              "Your weight on Mars is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calculateWeigt(_weightController.text, 0.91);
          _formattedText =
              "Your weight on Venus is ${_finalResult.toStringAsFixed(1)}";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weight on Planet X"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      //backgroundColor: Colors.grey,

      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/weight.png',
              height: 140,
              width: 150,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Your weight on Earth",
                        hintText: "In pounds",
                        icon: Icon(Icons.person_outline)),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio<int>(
                        activeColor: Colors.orange,
                        groupValue: radioValue,
                        value: 0,
                        onChanged: (value) {
                          setState(() {
                            handleRadioValueChange(0);
                          });
                        },
                      ),
                      Text(
                        'Pluto',
                        style: TextStyle(),
                      ),
                      Radio<int>(
                        activeColor: Colors.red,
                        groupValue: radioValue,
                        value: 1,
                        onChanged: (final newValue) {
                          setState(() {
                            handleRadioValueChange(1);
                          });
                        },
                      ),
                      Text(
                        'Mars',
                        style: TextStyle(),
                      ),
                      Radio<int>(
                        activeColor: Colors.green,
                        groupValue: radioValue,
                        value: 2,
                        onChanged: (final newValue) {
                          setState(() {
                            handleRadioValueChange(2);
                          });
                        },
                      ),
                      Text(
                        'Venus',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                      _weightController.text.isEmpty
                          ? "Please enter weight"
                          : _formattedText + " lbs",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  double calculateWeigt(String weight, double multiplier) {
    if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplier;
    } else {
      print("Wrong");
      return int.parse("180") * 0.38;
    }
  }
}
