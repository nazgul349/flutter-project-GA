import 'package:flutter/material.dart';

class Iphone extends StatefulWidget {
  final Function(int) onChangedStep;
  const Iphone({super.key, required this.onChangedStep});

  @override
  State<Iphone> createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {
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
                        text: 'Iphone',
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
                      const Text('Iphone : 1099 euros'),
                      Image.network('https://images.macrumors.com/t/9r84bU_ZTOTrUixxwhjHUFsAvD4=/800x0/smart/article-new/2017/09/iphonexdesign.jpg?lossy'),
                                            SingleChildScrollView(
                        
                        child: Column(
                          children: [
                            Text(
                                "Fonction AirDrop, fonction zoom audio, technologie MIMO, appel via Wi-fi, microlocation iBeacon, clavier QuickType, Night Shift, support Apple TV (2ème génération supérieur), AirPlay Mirroring, Next-generation Neural Engine, Apple MagSafe, cartes de transit express avec réserve de puissance, 4K HDRAirPlay Mirroring, FaceTime HD (1080p), compatible RTT/TTY"),
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
