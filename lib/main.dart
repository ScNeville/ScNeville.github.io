import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../presentation/pages/p_auth.dart';
import 'firebase_options.dart';
import 'package:website/utils/themes/app_theme.dart';
import 'package:website/bloc/cubit/login_cubit.dart';
import 'package:website/bloc/cubit/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  bool useEmulators = true;
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  if (useEmulators) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    await FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
    FirebaseDatabase.instance.useDatabaseEmulator('localhost', 9000);
    FirebaseFunctions.instance.useFunctionsEmulator('localhost', 5001);
  }
  await getDocumentDirectory();
  await registerAdapters();
  await openBoxes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
      ],
      child: ChangeNotifierProvider(
          create: (context) => ThemeNotifier(),
          child: Consumer<ThemeNotifier>(
            builder: (context, ThemeNotifier notifier, child) => MaterialApp(
          title: 'Website',
              theme: FlexThemeData.light(scheme: FlexScheme.espresso),
              darkTheme: FlexThemeData.dark(scheme: FlexScheme.espresso),
              themeMode: notifier.darkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const AuthenticationGate(),
            ),
          )),
    );
  }
}

registerAdapters() {}

openBoxes() async {
  await Hive.openBox('user');
}

getDocumentDirectory() async {
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
}
