import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Interest Calculator Application",
    home: SIForm(),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SIFormState();
  }
}

class SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', 'Dollar', 'Pounds'];
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("Simple Intrest Caclultor "),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[
            //First Child
            getImageAsset(),
            //Second Child
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal e.g. 12000',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),

            //Third child
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Rate of intrest',
                      hintText: 'In percent',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),

            //Fourth Child
            Padding(
                padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
                child: Row(

              children: <Widget>[
                Expanded(child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Term',
                      hintText: 'In Years',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),

                Container(width: _minimumPadding*5,),
                Expanded(child: DropdownButton<String>(
                  items: _currencies.map((String value)
                  {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: 'Rupees',
                  onChanged: (String newValueSelected){

                  },
                ))

              ],
            )),

            //

            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: Row(children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text('Calculate '),
                  onPressed: (){

                  },
                ),
              ),

              Expanded(
                child: RaisedButton(
                  child: Text('Reset '),
                  onPressed: (){

                  },
                ),
              ),
            ],)
            ),

            Padding(
              padding: EdgeInsets.only(top: _minimumPadding,bottom: _minimumPadding),
              child: Text('TODO TEXT'),
            )

          ],

        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
}
