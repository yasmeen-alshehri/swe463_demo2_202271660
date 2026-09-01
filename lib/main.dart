class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

void main() {
  var user = User('ali_ux', 'ali@email.com');
  var user2 = User('yasmeen_ux', 'yasmeen@gmail.com');

  print(user.username);
  print(user.email);

  print(user2.username);
  print(user2.email);
}