import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Post {
  final int id;
  final String post;
  final String background;
  final int status;

  Post(
      {required this.background,
      required this.id,
      required this.post,
      required this.status});
}
