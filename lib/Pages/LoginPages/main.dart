import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  _LoginPagesState createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final FontStyle = GoogleFonts.poppins();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('../assets/images/wangkas.png',scale: 2.0,),

                SizedBox(height: 20,),

                Text('Your personal money management',
                style: GoogleFonts.poppins(
                  fontSize: 14
                ),),

                SizedBox(height: 60,),

                Container(
                  width: 300,
                  child: TextField(
                  style: GoogleFonts.poppins(),
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: 'email',
                    hintStyle: GoogleFonts.poppins()
                  ),
                ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: TextField(
                    obscureText: _obscureText,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(),
                      suffixIcon: IconButton(onPressed: _toggle, icon: Icon(_obscureText ?  Icons.remove_red_eye :  Icons.remove_red_eye_outlined))
                    ),
                ),
                ),
              
                SizedBox(height: 40,),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffffd426),
                      ),
                      child: Text('Sign in', style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('not have account yet?', style: GoogleFonts.poppins(fontSize: 10),),
                        TextButton(onPressed: (){
                          print('push register button');
                        }, child: Text('Register', style: GoogleFonts.poppins(fontSize: 10),))
                      ],
                    ),
                  ),

                SizedBox(height: 60,),
                Text('Or continue with google', style: GoogleFonts.poppins(
                  fontSize: 10
                ),),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    print('tombol di tekan');
                  },
                  child: Container(
                    height: 43,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('../assets/icons/google-logo.png', height: 30, width: 30,),
                        SizedBox(width: 10,),
                        Text('Login with Google', style: GoogleFonts.poppins(),)
                      ],
                    ),
                  ),
                )
              ],
          )
        ),
      ),
    );
  }
}
