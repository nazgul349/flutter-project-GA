import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  final Function(int, String) onChangedStep;
  const Products({super.key, required this.onChangedStep});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void callMac() {
    print('Function Called');
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

    if (index == 1) {
        
        widget.onChangedStep(5, _favorite);
      }
    });
  }

  String _search = "";
   String _favorite = "fav";
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
                    text: 'List of the products \n'.toUpperCase(),
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                ),
                const SizedBox(
                  height: 1.0,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Search Bar'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        onChanged: ((value) => setState(() {
                              _search = value;
                            })),
                        decoration: InputDecoration(
                          hintText: 'Prodcut name...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                                            ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: (() => widget.onChangedStep(1, _search)),
                        child: Text('search'.toUpperCase()),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text('MacBook : 999 euros'),
                      InkWell(
                        onTap: callMac,
                        child: Image.network(
                          'https://images.frandroid.com/wp-content/uploads/2022/06/apple-macbook-pro-13-m2-frandroid-2022.png',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text('Iphone : 1099 euros'),
                      InkWell(
                        onTap: callIphone,
                        child: Image.network(
                          'https://images.macrumors.com/t/9r84bU_ZTOTrUixxwhjHUFsAvD4=/800x0/smart/article-new/2017/09/iphonexdesign.jpg?lossy',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 15.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: (() => widget.onChangedStep(0, _search)),
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
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
