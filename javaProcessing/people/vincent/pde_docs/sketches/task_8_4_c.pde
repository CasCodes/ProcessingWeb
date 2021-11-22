void setup() {
  Member a = new Member("Hans");
  Member b = new Member("Anna",a);
  Member c = new Member("Franz");
  Member d = new Member("Julia",c);

  if(b.friend!=null){
    a.friend = b;
  }
  
  if(d.friend!=null){
    c.friend = d;
  }

  println("Freund von",a.name,"ist",a.friend.name);
  println("Freund von",b.name,"ist",b.friend.name);
  println("Freund von",c.name,"ist",c.friend.name);
  println("Freund von",d.name,"ist",d.friend.name);
}

String getFriendName(Member n_of){
    if(n_of.friend != null){
      return n_of.friend.name;
    }else{
      return "niemand";
    }
  }
