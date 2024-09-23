import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/other/cart_provider.dart';
import 'package:store/screens/auth/sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://qlppktldeqyyssxdunbc.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFscHBrdGxkZXF5eXNzeGR1bmJjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjYwNjM5NjEsImV4cCI6MjA0MTYzOTk2MX0.2uzqb0MCVJrrXdmv0UeGESL9b5I_TtB3_BrzKy4ealkY',
  );
  runApp(MultiProvider(providers:[
    ChangeNotifierProvider(create: (_)=> CartProvider())
  ],
    child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
