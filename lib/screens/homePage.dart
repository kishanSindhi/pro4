import 'package:flutter/material.dart';
import 'package:pro4/widgets/button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _call() async {
      const num = 'tel:9723518102';
      if (await canLaunch(num)) {
        await launch(num);
      } else {
        throw 'Error in calling.';
      }
    }

    void _mail() async {
      const url =
          'mailto:ksindhi121@gmail.com?subject=Hello_Kishan_Sindhi&body=Hello';
      if (!await launch(url)) {
        throw Fluttertoast.showToast(msg: 'Cant load mail');
      }
    }

    void _sms() async {
      const msg = 'sms:9723518102';
      if (await canLaunch(msg)) {
        await launch(msg);
      } else {
        throw 'Sorry';
      }
    }

    void _google() async {
      const _url = 'http://google.com';
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    void _whatsapp() async {
      const String phone = '+9197200000';
      const _url = 'whatsapp://send?phone=$phone';
      if (!await launch(_url)) {
        throw Fluttertoast.showToast(msg: 'Cant open whatsapp');
      }
    }

    void _fb() async {
      const String url =
          'fb://facewebmodal/f?href=https://www.facebook.com/shreyajainmusic';
      if (!await launch(url)) {
        throw Fluttertoast.showToast(msg: 'Nai khule FB');
      }
    }

    void _yt() async {
      const String url = 'https://youtu.be/iwolPf6kN-k';
      if (!await launch(url)) {
        throw Fluttertoast.showToast(msg: 'Cant load url');
      }
    }

    void _reddit() async {
      const String url = 'https://www.reddit.com/r/dankinindia/';
      if (!await launch(url)) {
        throw Fluttertoast.showToast(msg: 'Cant load reddit');
      }
    }

    void _map() async {
      const String url = 'comgooglemaps://?center=0,0?q=petlad';
      if (!await launch(url)) {
        throw Fluttertoast.showToast(msg: 'Cant open maps');
      }
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Button(
            func: _call,
            text: 'Call',
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Button(
            func: _mail,
            text: 'Gmail',
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          Button(
            func: _sms,
            text: 'Text',
            color: Colors.blue,
          ),
          const SizedBox(height: 20),
          Button(
            func: _google,
            text: 'Google',
            color: Colors.orange,
          ),
          const SizedBox(height: 20),
          Button(
            func: _whatsapp,
            text: 'Whatsapp',
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Button(
            func: _fb,
            text: 'Facebook',
            color: Colors.indigo,
          ),
          const SizedBox(height: 20),
          Button(
            func: _yt,
            text: 'Youtube',
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          Button(
            func: _reddit,
            text: 'Reddit',
            color: Colors.deepOrange,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
