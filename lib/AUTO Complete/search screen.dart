import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static const List<String> continents = [
    'Foody Mart',
    "Hotel Annapoorna",
    'Bavan Hotel',
    'Retry Hotel',
    'Manam Restaurant',
    'South Hotel',
    "Aari Hotel",
    "Non veg Hotel"
    "MM mess",
    "Hydrabad Biriyani"
  ];

  String selecteHotel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white70,
      ),
      body: Center(
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textValue) {
                return continents.where((String value) =>
                    value.toLowerCase().contains(textValue.text.toLowerCase()));
              },
              onSelected: (String selectHotel) {
                setState(() {
                  selecteHotel = selectHotel;
                });
                print("Search : $Search");
              },
              fieldViewBuilder: (
                  BuildContext context,
                  TextEditingController textEditingController,
                  FocusNode focusNode,
                  VoidCallback onFieldSubmitted,
                  ) {
                return Container(
                  height: 50,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                  child: TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    onSubmitted: (value) {
                      onFieldSubmitted();
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                );
              },
              displayStringForOption: (String option) => option,
            ),
            SizedBox(height: 20),
            Text(
              'Select Hotel $selecteHotel',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
