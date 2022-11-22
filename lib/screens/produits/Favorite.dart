import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  final Function(int, String) onChangedStep;
  const Favorite({super.key, required this.onChangedStep});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void callMac() {
    print('Function Called.');
    _search = "Mac";
    widget.onChangedStep(4, _search);
  }

  void callIphone() {
    print('Function Called.');
    _search = "Iphone";
    widget.onChangedStep(3, _search);
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        widget.onChangedStep(2, _search);
      }
    });
  }

  String _search = "";
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Favorite Products \n'.toUpperCase(),
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text('Computer : 999 euros'),
                      InkWell(
                        onTap: callMac,
                        child: Image.network(
                          'https://images.frandroid.com/wp-content/uploads/2022/06/apple-macbook-pro-13-m2-frandroid-2022.png',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text('Iphone : 1099 euros'),
                      const SizedBox(height: 15.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: (() => widget.onChangedStep(2, _search)),
                        child: Text('Back'.toUpperCase()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'favorite',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.grey[800],
          unselectedItemColor: Colors.orange[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
