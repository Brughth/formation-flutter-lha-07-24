import 'package:dio/dio.dart';
import 'package:flutter_application_2/post/data/models/post_model.dart';

class PostRepository {
  final dio = Dio();

  Future<List<Post>> fetchPosts() async {
    Response response = await dio.get(
      'https://jsonplaceholder.typicode.com/posts',
    );

    var posts = <Post>[];

    for (var item in response.data) {
      posts.add(Post.fromJson(item));
    }

    return posts;
  }
}
