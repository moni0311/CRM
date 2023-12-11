class auto{
  static final List<String>states=[
    'Hotel bavan',
    'Anna poorna',
    'Malai Hotel',
    'The best restarunt'
  ];
  static List<String>getSuggestions(String query){
    List<String> matches=[];
    matches.addAll(states);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}