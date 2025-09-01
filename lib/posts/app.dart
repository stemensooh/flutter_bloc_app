import 'package:flutter/material.dart';
import 'package:bloc_app/posts/posts.dart';

class App extends MaterialApp {
  const App({super.key}) : super(home: const PostsPage(), debugShowCheckedModeBanner: false);
}