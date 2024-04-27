
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Models/catogeories_news_model.dart';
import 'package:newsapp/Models/news_channel_headline_model.dart';

class NewsRepository{

  Future<NewsChannelHeadlineModel> fetchNewsChannelHeadlineApi() async{
    String url = 'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=3fe28a4696044e6ea541808fd570f209';


    final response =await http.get(Uri.parse(url));

    if(response.statusCode==200){

      final body = jsonDecode(response.body);

      return NewsChannelHeadlineModel.fromJson(body);


    }throw Exception('Error');

  }
   Future<CategoriesNewsModel> fetchCatogeoriesNewsApi(String Category) async{
    String url = 'https://newsapi.org/v2/everything?q=${Category}&apiKey=3fe28a4696044e6ea541808fd570f209';


    final response =await http.get(Uri.parse(url));

    if(response.statusCode==200){

      final body = jsonDecode(response.body);

      return CategoriesNewsModel.fromJson(body);


    }throw Exception('Error');

  }
  
}