import 'package:flutter/material.dart';
import 'package:project_1/model/post_model.dart';
import 'package:project_1/service/http_service.dart';
import 'package:project_1/service/log_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  apiLoadPostList2()async{
    var response = await HttpService.GET(HttpService.API_POST_LIST, HttpService.paramsEmpty());
    LogService.d(response!);

  }

  apiLoadPostList3()async{
    Post post = Post(title: "NextGen",body: "Academy",userId: 1);
    var response = await HttpService.POST(HttpService.API_POST_CREATE, HttpService.paramsCreatePost(post));
    LogService.e(response!);

  }

  @override
  void initState() {
    super.initState();
    apiLoadPostList3();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
