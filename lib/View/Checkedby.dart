// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, camel_case_types, file_names, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Checked_Data extends StatelessWidget {
  const Checked_Data({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل المستفيدين'),
        backgroundColor: Color.fromARGB(255, 20, 98, 128),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
        ],
        leading: Icon(Icons.qr_code),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: hight / 1.1989689,
                  width: width - 20,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Text('المعلومات الشخصية:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 26, 167, 139)))),
                          Card(title: 'الاسم:', answer: 'YYYYYYYYYY'),
                          Card(title: 'الاب:', answer: 'YYYYYYYYYY'),
                          Card(title: 'الكنية:', answer: 'YYYYYYYYYY'),
                          Card(title: 'اسم وكنية الام:', answer: 'YYYYYYYYYY'),
                          Card(title: 'الرقم الوطني:', answer: 'YYYYYYYYYY'),
                          Card(title: 'الجنس:', answer: 'YYYYYYYYYY'),
                          Card(
                              title: 'الحالة الاجتماعية:',
                              answer: 'YYYYYYYYYY'),
                          Divider(
                              endIndent: 20,
                              indent: 20,
                              color: Color.fromARGB(255, 20, 98, 128)),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Text('مكان الاقامة:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 26, 167, 139)))),
                          Card(
                              title: 'محل وتاريخ الولادة:',
                              answer: 'YYYYYYYYYY'),
                          Card(title: 'مكان الاقامة:', answer: 'YYYYYYYYYY'),
                          Card(title: 'العنوان:', answer: 'YYYYYYYYYY'),
                          Divider(
                              endIndent: 20,
                              indent: 20,
                              color: Color.fromARGB(255, 20, 98, 128)),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Text('معلومات التواصل:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 26, 167, 139)))),
                          Card(title: 'رقم الموبايل:', answer: 'YYYYYYYYYY'),
                          Card(
                              title: 'عدد افراد الاسرة:', answer: 'YYYYYYYYYY'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String? title;
  final String? answer;
  Card({super.key, this.title, this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
                color: Color.fromARGB(255, 20, 98, 128),
                fontWeight: FontWeight.bold),
          ),
          Text(answer!)
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Build search results based on the query
    return Center(
      child: Text('Search results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Build search suggestions based on the query
    return Center(
      child: Text('Search suggestions for: $query'),
    );
  }
}
