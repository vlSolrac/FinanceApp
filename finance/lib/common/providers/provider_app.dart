import 'package:finance/utils/routers/router_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

final routesProvider = Provider<GoRouter>((ref) => RoutersApp.routers);

final isLoadingProvider = StateProvider<bool>((ref) => false);

final isDarkThemeProvider = StateProvider<bool>((ref) => false);

final imageProvider = StateProvider<XFile>((ref) => XFile(""));

// final authServiceProvider =
//     Provider((ref) => AuthRepositorie(service: AuthFirebaseService()));

// final userProvider = StateProvider((ref) => CUser());

// final clientProvider = StateProvider((ref) => CUser());

final authFormProvider = Provider.autoDispose<GlobalKey<FormState>>((ref) {
  GlobalKey<FormState> authForm = GlobalKey<FormState>();
  return authForm;
});

final validateAuthFormProvider = Provider.autoDispose<bool>((ref) {
  final authForm = ref.watch(authFormProvider);
  return authForm.currentState?.validate() ?? false;
});
