import 'package:fe_lab_clinicas_self_service/src/modules/auth/login/login_controller.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/auth/login/login_page.dart';
import 'package:fe_lab_clinicas_self_service/src/services/user_login_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginRouter extends FlutterGetItModulePageRouter {
  const LoginRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => UserLoginServiceImpl(userRepository: i())),
        Bind.lazySingleton((i) => LoginController()),
      ];

  @override
  WidgetBuilder get view => (_) => const LoginPage();
}