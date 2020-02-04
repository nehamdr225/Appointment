import 'package:appointment/pages/UserHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:appointment/state/state.dart';

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff1d2d44),
  ));
  runApp(BootStrapper());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class BootStrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch _fetch = Fetch();
    // CoreSecureStorage _storage = CoreSecureStorage();
    // ProductApi _productApi = ProductApi(_fetch);
    // UserApi _userApi = UserApi(_fetch, _storage);
    // Validator _validator = Validator();

    return MultiProvider(
      providers: [
      //   ChangeNotifierProvider(create: (_) => new ProductModel(_productApi)),
      //   ChangeNotifierProvider(
      //       create: (_) => new UserModel(_userApi, _storage, _validator)),
        ChangeNotifierProvider(create: (_) => new STheme())
      ],
      child: ServiceApp(),
    );
  }
}

class ServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<STheme>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: SafeArea(
        child: UserHomePage(),
      )
    );
  }
}
