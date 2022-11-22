import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function(int) onChangedStep;
  const Register({super.key, required this.onChangedStep});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isSecret = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Text('registration'.toUpperCase()),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => widget.onChangedStep(0),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Please fill in the requested information :'
                        .toUpperCase(),
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('First Name'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Ex: John',
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
                      const Text('Last Name'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Ex: Doe',
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
                      const Text('Enter your email'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
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
                      const SizedBox(height: 15.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: (() => print('send')),
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
