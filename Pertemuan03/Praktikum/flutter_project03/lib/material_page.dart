import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 47, 118, 177),
        title: Text("Home page"),),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Home Page"),
              ),
              ListTile(
                title: Text("About Page"),
              )
            ],
          ),),
        body: Center(
          child: BiggerText(
            text: "Hello ULBI")
          ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon (Icons.settings),
              label: "Settings"
            )
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.indigoAccent,
        ), 
    );  
  }
}

class Heading extends StatelessWidget {

  final String text;

  const Heading({Key? key, required this.text}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget{
  final String text;

  const BiggerText({Key? key, required this.text}) : super (key:key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}
class _BiggerTextState extends State<BiggerText>{
  double _textSize = 16.0;

  @override
  Widget build (BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: _textSize,
          ),
        ),
        ElevatedButton(
          child: Text(_textSize == 16.0? "Perbesar": "perkecil") ,
          onPressed: (){
            setState(() {
              _textSize = _textSize == 16.0? 32.0 : 16.0;
            });
          },
        )
      ],
    );
  }
}