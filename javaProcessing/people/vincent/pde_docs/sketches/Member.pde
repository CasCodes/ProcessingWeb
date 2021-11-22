class Member {
  String name;
  Member friend;

  Member(String n) {
    name = n;
  }
  
  Member(String n, Member bre) {
    name = n;
    friend = bre;
  }
}
