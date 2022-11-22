import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  final Function(int, String) onChangedStep;
  const AuthScreen({super.key, required this.onChangedStep});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _isSecret = true;
  String _email = "";
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
                    text: 'Welcome on my \n'.toUpperCase(),
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                    children: [
                      TextSpan(
                        text: 'Flutter APP',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Enter your email'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        onChanged: ((value) => setState(() {
                          _email = value ;
                        })),
                        decoration: InputDecoration(
                          hintText: 'Ex: johndoe@gmail.com',
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
                      Text('Enter your password'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: _isSecret,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () => setState(() => _isSecret = !_isSecret),
                            child: Icon(!_isSecret
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          hintText: '*********',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(
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
                        onPressed: (() => widget.onChangedStep(2, _email)),
                        child: Text('login'.toUpperCase()),
                      ),
                      const SizedBox(height: 15.0),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: (() => widget.onChangedStep(1, _email)),
                        child: Text('register'.toUpperCase()),
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
