class UserProfile {
  final String name;
  String? bio;

  UserProfile(this.name, {this.bio});

  String getDisplayBio() {
    return bio ?? 'No bio provided.';
  }
}

void main() {
  final user1 = UserProfile('Ahmed');
  final user2 = UserProfile('Layla', bio: 'Flutter Developer');
  final user3 = UserProfile('Yasmeen');

  print(user1.getDisplayBio());
  print(user2.getDisplayBio());
  print(user3.getDisplayBio());
}