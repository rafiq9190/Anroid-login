import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Login",
      theme:ThemeData(
        primarySwatch:Colors.red,
      ),
      home:myHomePage(),
    );
  }
}
class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}
class _myHomePageState extends State<myHomePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Stack(
        fit:StackFit.expand,
        children:<Widget>[
          Image.asset(
            "assets/images/bg.jpg",
            fit:BoxFit.cover,
            color:Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              
              Image.asset(
                "assets/images/user.png",
                height: 120.0,
                width: 100.0,
                // padding:EdgeInsets.symmetric(
                //   horizontal:20.0,
                //   vertical:20.0
                // )

              ),
             Padding(
               padding:EdgeInsets.only(top:30.0),
               child: Stack(
                children:<Widget>[
                 SingleChildScrollView(
                   child: Container(
                    height: 400.0,
                    width: 390.0,
                    padding:EdgeInsets.symmetric(
                      horizontal:20.0,
                      vertical:30.0,
                    ),
                    decoration: BoxDecoration(
                      color:Colors.white60,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child:Column(
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.symmetric(
                            vertical:20.0,
                          ),
                          child:TextField(
                          autocorrect: false,
                          maxLength: 20,
                          obscureText: true,
                          style:TextStyle(
                            fontSize:25.0,
                            fontWeight: FontWeight.w700,
                            

                          ),
                          decoration:InputDecoration(
                          labelText: "UserName",
                          border: OutlineInputBorder(),
                          
                          ),
                        ),
                        ),
                        TextField(
                          autocorrect: false,
                          maxLength: 20,
                          obscureText: true,
                          
                          style:TextStyle(
                            fontSize:25.0,
                            color:Colors.black,
                            fontWeight: FontWeight.w700,
                            

                          ),
                          decoration:InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          
                          ),
                        ),
                    Padding
                    (padding:EdgeInsets.only(top:10.0) ,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: (){},
                        child:Text("Forgot Password",
                        
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        ),
                      ],
                    ),
                    ),

                        RaisedButton(
                          
                            onPressed: (){},
                             color: Colors.red,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                            splashColor: Colors.red[700],
                            padding: EdgeInsets.symmetric(
                              horizontal:100.0,
                              vertical: 10.0,
                            ),
                             child: Text(
                               
                               "Login",
                               style:TextStyle(
                                 fontSize:22.0,
                                 color: Colors.white,
                                 
                                 
                               )
                             )
                             )                    
                       
                      ],
                    )
                  )
                 )
                ]
              )
             )
            ]
          )
          
        ]
      )
    );
      
    
  }
}