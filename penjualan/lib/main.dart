import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  final appTitle = 'Penjualan Kendaraan  ';
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: DefaultTabController(

        length: 3,
        child: Scaffold(
          appBar: new AppBar(

            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.computer)),

                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.motorcycle)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              halaman1(),
              halaman2(),
              halaman3(),
            ],
          ),
        ),
      ),
    );
  }
}
class halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Pilih Merk'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Merk'),
      ),
    );
  }
}
class halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("Nisan Genesis"),
          ),
          new ListTile(
            title: new Text("Toyota Avanza"),
          ),
          new ListTile(
            title: new Text("Honda Stream"),
          ),
          new ListTile(
            title: new Text("Suzuki Carry"),
          ),


        ],
      ),
    );
  }
}


class halaman3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("Suzuki Next"),
          ),
          new ListTile(
            title: new Text("Honda Beat Street"),
          ),
          new ListTile(
            title: new Text("Honda N-Max"),
          ),
          new ListTile(
            title: new Text("Suzuki Satria FU"),
          ),
          new ListTile(
            title: new Text("Honda Vario"),
          ),
          new ListTile(
            title: new Text("power bank"),
          ),

        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: MyApp1(),
      drawer: Drawer(
        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Zaqie Alfatah"),
              accountEmail: Text("zaqiealfatah05"),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),

            Divider(
              height: 2.0,
            ),
            _buildListTile(Icons.person, "Akun", null),
            _buildListTile(Icons.settings, "Pengaturan", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(null, "Pusat Bantuan", null),
            _buildListTile(null, "Keluar", Icons.input),
          ],
        ),
      ),
    );
  }
  Widget _buildListTile(
      IconData iconLeading,
      String title,
      IconData iconTrailing,
      ) {
    return ListTile(
      leading: Icon(iconLeading),
      title: Text(title),
      trailing: Icon(iconTrailing),
      onTap: () {},
    );
  }
}