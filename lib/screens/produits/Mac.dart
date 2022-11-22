import 'package:flutter/material.dart';

class Mac extends StatefulWidget {
  final Function(int) onChangedStep;
  const Mac({super.key, required this.onChangedStep});

  @override
  State<Mac> createState() => _MacState();
}

class _MacState extends State<Mac> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                    text: 'More Information about :  \n'.toUpperCase(),
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                    children: [
                      TextSpan(
                        text: 'Mac',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text('Mac : 999 euros'),
                      Image.network(
                          'https://images.frandroid.com/wp-content/uploads/2022/06/apple-macbook-pro-13-m2-frandroid-2022.png'),
                      SingleChildScrollView(
                        
                        child: Column(
                          children: [
                            Text(
                                "System on Chip (SoC) Apple M1 chip; 8-core CPU with 4 performance cores and 4 efficiency cores; 16-core Neural Engine"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: (() => widget.onChangedStep(2)),
                        child: Text('back'.toUpperCase()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
