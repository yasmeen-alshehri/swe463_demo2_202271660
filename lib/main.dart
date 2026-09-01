class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

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

class ApiResponse<T> {
  final bool success;
  final T? data;
  final String? errorMessage;

  ApiResponse(this.success, {this.data, this.errorMessage});
}

void main() {
  final userResponse = ApiResponse<User>(
    true,
    data: User('khalid', 'khalid@example.com'),
  );

  print(userResponse.data?.username);

  final postResponse = ApiResponse<Post>(
    true,
    data: TextPost('Turki', 'Flutter is awesome'),
  );

  if (postResponse.success) {
    postResponse.data?.render();
  } else {
    print('Response failed: ${postResponse.errorMessage}');
  }

  final errorResponse = ApiResponse<User>(
    false,
    errorMessage: 'Unable to load user',
  );

  print(errorResponse.errorMessage);

  final intResponse = ApiResponse<int>(
    true,
    data: 200,
  );

  print(intResponse.data);
}