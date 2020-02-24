// import 'package:flutter/material.dart';
// //import 'package:flutter_bloc/flutter_bloc.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
//   Home({ WidgetBuilder builder, RouteSettings settings});
// }

// class _HomeState extends State<Home> with TickerProviderStateMixin{
//   AnimationController _animationController;
//   AnimationController _animationController2;
  
//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondAnimation,){
//     Animation<Offset> custom = Tween<Offset>(begin: Offset(0.0, 0.5), end: Offset(0.0, 0.5)).animate(animation);
//     return SlideTransition(
//       position: custom,
//       child: Container(
//         color: Colors.white,
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     final color = Theme.of(context).colorScheme;
//     return Scaffold(
//       resizeToAvoidBottomPadding: false,
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: <Widget>[
//           Container(
//             width: double.maxFinite,
//             height: double.maxFinite,
//             color: color.primaryVariant,),
//             buildTransitions(context, _animationController, _animationController2),
//         // BlocBuilder<WelcomingScreenBloc, WelcomingScreenState>(
//         //     builder: (context, state) {
//         //       return AnimatedBuilder(
//         //         animation: _animationController,
//         //         child: AnimatedContainer(
//         //           duration: Duration(milliseconds: 300),
//         //           alignment: Alignment.center,
//         //           margin: EdgeInsets.only(top: state.margin),
//         //           decoration: BoxDecoration(
//         //               color: Colors.white,
//         //               borderRadius: BorderRadius.only(
//         //                   topLeft: Radius.circular(30),
//         //                   topRight: Radius.circular(30)
//         //               )
//         //           ),
//         //           child: BlocBuilder<WelcomingScreenBloc, WelcomingScreenState>(
//         //             builder: (context, state) {
//         //               if(state is LoginOpened) {
//         //                 return _signUpForm;
//         //               }
//         //               if(state is RegisterOpened) {
//         //                 return _registerForm;
//         //               }
//         //               return Column(
//         //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //                 children: <Widget>[
//         //                   Padding(
//         //                     padding: const EdgeInsets.symmetric(horizontal: 40),
//         //                     child: Column(
//         //                       children: <Widget>[
//         //                         Stack(
//         //                           children: <Widget>[
//         //                             Icon(EvaIcons.creditCardOutline, size: 80, color: Colors.deepPurpleAccent.withOpacity(0.5)),
//         //                             Padding(
//         //                               padding: const EdgeInsets.all(10),
//         //                               child: Icon(EvaIcons.creditCard, size: 80, color: Colors.black,),
//         //                             ),
//         //                           ],
//         //                         ),
//         //                         Text(
//         //                           'Create, search and organize your expenses with a modern and dynamic way',
//         //                           style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
//         //                         ),
//         //                       ],
//         //                     ),
//         //                   ),
//         //                   Column(
//         //                     children: <Widget>[
//         //                       GestureDetector(
//         //                         onTap: () {
//         //                           _animationController.reverse().whenComplete(() {
//         //                             _bloc..add(OpenRegister());
//         //                             _animationController.forward();
//         //                           });
//         //                         },
//         //                         child: Container(
//         //                           height: 55,
//         //                           alignment: Alignment.center,
//         //                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//         //                           decoration: BoxDecoration(
//         //                             color: Colors.black,
//         //                             borderRadius: BorderRadius.circular(40)
//         //                           ),
//         //                           child: Text('SIGN UP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22)),
//         //                         ),
//         //                       ),
//         //                       GestureDetector(
//         //                         onTap: () {
//         //                           _animationController.reverse().whenComplete(() {
//         //                             _bloc..add(OpenLogin());
//         //                             _animationController.forward();
//         //                           });
//         //                         },
//         //                         child: Container(
//         //                           height: 55,
//         //                           alignment: Alignment.center,
//         //                           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//         //                           decoration: BoxDecoration(
//         //                             color: Colors.white,
//         //                             borderRadius: BorderRadius.circular(40),
//         //                             border: Border.all(width: 2, color: Colors.black)
//         //                           ),
//         //                           child: Text('LOGIN', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22)),
//         //                         ),
//         //                       ),
//         //                     ],
//         //                   )
//         //                 ],
//         //               );
//         //             },
//         //           )
//         //         ),
//         //         builder: (context, child) {
//         //           return SlideTransition(
//         //             position: Tween<Offset>(
//         //               begin: Offset(0, 1),
//         //               end: Offset(0,0)
//         //             ).animate(CurvedAnimation(
//         //               curve: Curves.fastOutSlowIn,
//         //               parent: _animationController
//         //             )),
//         //             child: child,
//         //           );
//         ]));
//   }
// }

// // body: Stack(
//       //   children: <Widget>[
//       //     Container(
//       //       width: double.maxFinite,
//       //       height: double.maxFinite,
//       //     ),
          
//       //   ],
//       // ),