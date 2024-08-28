import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/post/data/models/post_model.dart';
import 'package:flutter_application_2/post/data/repositories/post_repository.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({super.key});

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  late PostRepository repository;

  @override
  void initState() {
    repository = PostRepository();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postss"),
      ),
      body: FutureBuilder<List<Post>>(
        future: repository.fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              return const Center(
                child: CupertinoActivityIndicator(
                  radius: 40,
                ),
              );
            case ConnectionState.none:
              return Center(
                child: Text("${snapshot.error}"),
              );
            case ConnectionState.done:
              var posts = snapshot.data;

              if (posts?.isEmpty ?? true) {
                return const Center(
                  child: Text("No post yet"),
                );
              }

              return ListView.separated(
                itemBuilder: (context, index) {
                  var post = posts[index];
                  return Card(
                    child: ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.body),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: posts!.length,
              );

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
