import 'package:flutter/material.dart';
import 'main.dart';

//List<String> chapter_names = ['A', 'B', 'C'];
Map<String, PageInfo> chapter_names = {
  "A": PageInfo(1,5),
  "B": PageInfo(5,3),
  "C": PageInfo(8,5),
  "D": PageInfo(13,2),
};
var chap_List = chapter_names.keys.toList();
var Page_List = chapter_names.values.toList();

class All{
  final String chapter;
  final PageInfo p ;
  All(this.chapter, this.p);
}
class PageInfo{
  final int starting_number;
  final int number_of_pages;
  PageInfo(this.starting_number, this.number_of_pages);
}
class bio_1st extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biologz 1st Paper Formula'),
      ),
      body: new Container(
        child:ListView(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 20.0, bottom: 20.0)),
            for (int i = 0; i < chapter_names.length; i++)

              RaisedButton(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 20.0, right: 20),
                  child: Text(
                    chap_List[i],
                    style: TextStyle(color: Colors.white),
                  ),
                  color: new Color(chapterColor),
                  onPressed: () =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  chapters(s: All(chap_List[i], Page_List[i]))))
              )


          ],
        ),
      ),
    );
  }
}

class chapters extends StatelessWidget {
  const chapters({Key? key, required this.s}) : super(key: key);

  final All s;


  List<Widget> _getHorizontalList() {
    List<Widget> horizontalWidgets = List<Widget>.empty(growable: true);

    int start_from = s.p.starting_number;
    int number_of_pages = s.p.number_of_pages;

    for (int i = start_from; i < (start_from+number_of_pages); i++) {
      horizontalWidgets.add(Card(
        elevation: 10,
        child: Container(
          child: Image.asset(
            'assets/images/math_1st/' +
                'Math_Formulas_1st_Paper (' +
                (i + 1).toString() +
                ').jpg',
          ),
        ),
      ));
    }
    return horizontalWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biology 1st Paper Formula\n' + ' (chapter ' + s.chapter + ' )'),
      ),
      body: ListView(
        //children: _getHorizontalList(images_name),
        children: _getHorizontalList(),
      ),
    );
  }
}
