import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  //f45d27
  //f5851f

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body:Container(
           child:Column(
             children: [
               Container(
                 width:MediaQuery.of(context).size.width,
                 height:MediaQuery.of(context).size.height/2.5,
                  decoration:const BoxDecoration(
                   color:Color(0XFf5851FF),
                   gradient:LinearGradient(
                     colors:[
                       Color(0xFFF45d27),
                       Color(0xFFF5851f),
                     ],
                     begin:Alignment.topCenter,
                     end:Alignment.bottomCenter,
                     ),
                     borderRadius:BorderRadius.only(
                     bottomLeft: Radius.circular(90),
                   ),
                ),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:const[
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        color:Colors.white,
                        size:90,
                        ),
                    ),
                        Spacer(),
                    Align(
                       alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(bottom:32,right:32),
                        child: Text(
                          'Login',
                          style:TextStyle(
                            fontSize:18,
                            color:Colors.white,
                          ),
                          ),
                      ),
                    ),
                  ],
                ),
               ),
               Container(
                 width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height/2.3,
                 padding:const EdgeInsets.only(top:62),
                 child: Column(
                   children: [
                     Container(
                        width:MediaQuery.of(context).size.width/1.2,
                        height:45,
                        padding:const EdgeInsets.only(top:4, left:16,  right:16, bottom:4),
                        decoration:const BoxDecoration(
                          color:Colors.white,
                           borderRadius:BorderRadius.all(Radius.circular(50)),
                          boxShadow:[
                            BoxShadow(
                              color:Colors.black12,
                              blurRadius:5,
                            ),
                          ],
                        
                        ),
                        child:const TextField(
                          decoration:InputDecoration(
                            hintText: 'Email',
                            icon:Icon(
                              Icons.email,
                              color:Colors.grey,
                            ),
                          ),
                        ),
                     ),
                      Container(
                        width:MediaQuery.of(context).size.width/1.2,
                        height:45,
                        margin:const EdgeInsets.only(top:30),
                        padding:const EdgeInsets.only(top:4, left:16,  right:16, bottom:4),
                        decoration:const BoxDecoration(
                          color:Colors.white,
                           borderRadius:BorderRadius.all(Radius.circular(50)),
                          boxShadow:[
                            BoxShadow(
                              color:Colors.black12,
                              blurRadius:5,
                            ),
                          ],
                        ),
                        child:const TextField(
                          decoration:InputDecoration(
                            hintText: 'Password',
                            icon:Icon(
                              Icons.vpn_key,
                              color:Colors.grey,
                            ),
                          ),
                        ),
                     ),
                     const Align(
                       alignment:Alignment.bottomRight,
                       child:Padding(
                         padding: EdgeInsets.only(top:16, right:32),
                         child: Text('Forgot Password ?',
                         style:TextStyle(
                           color:Colors.grey,
                         ),
                         ),
                       ),
                       ),
                       const Spacer(),
                       Container(
                         width:MediaQuery.of(context).size.width/1.2,
                         height:45,
                         decoration:const BoxDecoration(
                             gradient:LinearGradient(
                              colors:[
                                Color(0xFFF45d27),
                                Color(0xFFF5851f),
                              ],
                              begin:Alignment.topCenter,
                              end:Alignment.bottomCenter,
                     ),
                           borderRadius:BorderRadius.all(Radius.circular(50)),
                         ),
                         child:Center(
                           child: Text(
                             'Login'.toUpperCase(),
                             style:const TextStyle(
                               fontSize:18,
                               color:Colors.white,
                               fontWeight:FontWeight.bold,
                             ),
                             ),
                           ),
                       ),
                   ],
                 ),
               ),
             ],
           ),
         ),
      ),
    );
  }
}