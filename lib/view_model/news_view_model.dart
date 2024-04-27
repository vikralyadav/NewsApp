

import 'package:flutter/foundation.dart';
import 'package:newsapp/Models/catogeories_news_model.dart';
import 'package:newsapp/Models/news_channel_headline_model.dart';
import 'package:newsapp/repositries/news_repository.dart';

class NewsViewModel{

  final _rep = NewsRepository();

  Future<NewsChannelHeadlineModel> fetchNewsChannelHeadlineApi() async{
    final response = await _rep.fetchNewsChannelHeadlineApi();
    return response;


  }
   Future<CategoriesNewsModel> fetchCatogeoriesNewsApi(String category) async{
    final response = await _rep.fetchCatogeoriesNewsApi(category);
    return response;


  }
  
}