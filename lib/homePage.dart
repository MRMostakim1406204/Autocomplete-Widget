import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<String> suggestionList = ["Dhaka","Faridpur","Gazipur","Gopalganj",
"Jamalpur","Kishoreganj","Madaripur","Manikganj","Munshiganj","Mymensingh",
"Narayanganj","Narsingdi","Netrokona","Rajbari","Shariatpur","Sherpur","Tangail",
"Natore","Nawabganj","Pabna","Rajshahi","Sirajgonj","Dinajpur","Gaibandha","Kurigram",
"Lalmonirhat","Nilphamari","Panchagarh","Rangpur","Thakurgaon","Barguna","Barisal",
"Bogra","Joypurhat","Naogaon","Bhola","Jhalokati","Patuakhali","Pirojpur","Bandarban",
"Brahmanbaria","Chandpur","Chittagong","Comilla","Cox-Bazar","Feni","Khagrachari","Lakshmipur",
"Noakhali","Rangamati","Habiganj","Maulvibazar","Sunamganj","Sylhet","Bagerhat","Chuadanga",
"Jessore","Jhenaidah","Khulna","Kushtia","Magura","Narail","Satkhira",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AutoComplete Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),

          child: Autocomplete(optionsBuilder: (TextEditingValue textEditingValue){
            if (textEditingValue.text == ""){
              return Iterable<String>.empty();
            }
             else{
              List<String> matches = <String>[];
              matches.addAll(suggestionList);
              matches.retainWhere((s) {
                return s.toLowerCase().contains(textEditingValue.text.toLowerCase()); 
              });
             return matches;
             }},
             onSelected: (String value){
              print("You Just Selected $value");
             },
             ),
        ),
      ),
    );
  }
}