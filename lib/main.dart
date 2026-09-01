abstract class Post {
  final String author;

  Post(this.author);

  void render();
}

class TextPost extends Post {
  final String text;

  TextPost(String author, this.text) : super(author);

  @override
  void render() {
    print('Text post by $author: "$text"');
  }
}

class ImagePost extends Post {
  final String imageUrl;

  ImagePost(String author, this.imageUrl) : super(author);

  @override
  void render() {
    print('Image post by $author at $imageUrl');
  }
}

// Third class: VideoPost
class VideoPost extends Post {
  final String videoUrl;

  VideoPost(String author, this.videoUrl) : super(author);

  @override
  void render() {
    print('Video post by $author at $videoUrl');
  }
}

void main() {
  List<Post> feed = [
    TextPost('khalid', 'Flutter is amazing!'),
    ImagePost('omar', 'https://example.com/sunset.png'),
    VideoPost('Yasmeen', 'https://example.com/video.mp4'),
  ];

  for (final post in feed) {
    post.render();
  }
}