import 'package:flutter/material.dart';

class Ideas extends StatefulWidget {
  @override
  _IdeasState createState() => _IdeasState();
}

class _IdeasState extends State<Ideas> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          centerTitle: true,
          floating: true,
          expandedHeight: 250.0,
          backgroundColor: Colors.amber,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Ideas'),
            background: Image(
              image: AssetImage('assets/idea.jpg'),
              fit: BoxFit.fill,
            )
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.amber[100 * ((index % 3)+1)],
                child: Text(
                  'Item $index',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              );
            },
            childCount: 40,
          ),
        )
      ],
    );
  }
}
