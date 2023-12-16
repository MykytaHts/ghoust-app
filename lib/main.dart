import 'package:deepstatebllog/app.dart';
import 'package:deepstatebllog/bootstrap.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'backbone/di.dart' as di;

Future<void> main() async {
  di.init();
  await dotenv.load(fileName: '.env');

  await bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    return const BlogApp();
  });
}
