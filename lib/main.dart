import 'package:flutter/material.dart';

void main() => runApp(const MyHome());

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  static const String _title = 'My Home';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Home'),
          centerTitle:true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Semua'),
              ),
              Tab(
                child: Text('Depan'),
              ),
              Tab(
                child: Text('Belakang'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Semua(),
            Depan(),
            Belakang(),
            //Container(
             //icon: Icon(Icons.weekend),
            //),
           
            /*Center(
              child: 
              Text(""),
            ),
            Center(
              child: 
              Text(""),
            ),
            Center(
              child: 
              Text(""),
            ),*/
          ],
        ),
      ),
    );
  }
}
class Semua extends StatelessWidget {
  @override
  Widget  build(BuildContext  context){
    return GridView.count(
      crossAxisCount: 2, 
      scrollDirection: Axis.vertical, 
      children : List.generate(choices.length, (index) {
        return Center(
          child: ChoiceCard(choice: choices[index]),
        );
      }
      ),
    );
  }
}
class Depan extends StatelessWidget {
  @override
  Widget  build(BuildContext  context){
    return GridView.count(
      crossAxisCount: 2, 
      scrollDirection: Axis.vertical, 
      children : List.generate(choices.length, (index) {
        return Center(
          child: ChoiceCard(choice: choices[index]),
        );
      }
      ),
    );
  }
}
class Belakang extends StatelessWidget {
  @override
  Widget  build(BuildContext  context){
    return GridView.count(
      crossAxisCount: 2, 
      scrollDirection: Axis.vertical, 
      children : List.generate(choices.length, (index) {
        return Center(
          child: ChoiceCard(choice: choices[index]),
        );
      }
      ),
    );
  }
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;

  final IconData icon;
}

const List<Choice> choices = const [
  const Choice(title: 'Ruang Tamu', icon: Icons.weekend),
  const Choice(title: 'Bilik Tidur', icon: Icons.local_hotel),
  const Choice(title: 'Tandas', icon: Icons.bathtub),
  const Choice(title: 'Dapur', icon: Icons.kitchen),
  const Choice(title: 'Lampu Luar', icon: Icons.directions_car),
  const Choice(title: 'Lampu Pagar', icon: Icons.lightbulb),
  
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:
                        Icon(choice.icon, size: 50.0, color: textStyle.color,)),
                Text(choice.title, style: textStyle),
              ]),
        ));
  }
}