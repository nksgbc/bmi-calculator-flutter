import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      colour: Color(0xFFC1C111),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomCard(
                colour: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: CustomCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
