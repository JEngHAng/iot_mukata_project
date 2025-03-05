import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_mukata_project/views/splash_screen_ui.dart';

void main() {
  runApp(
    //เรียกใช้คลาสที่เรียกใช้วิดเจตหลักของแอป meterialApp()
    IoTMukataProject(),
  );
}

//-----------------------------------
class IoTMukataProject extends StatefulWidget {
  const IoTMukataProject({super.key});

  @override
  State<IoTMukataProject> createState() => _IoTMukataProjectState();
}

class _IoTMukataProjectState extends State<IoTMukataProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
