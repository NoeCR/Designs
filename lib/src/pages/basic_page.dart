import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _createImage(),
          _createTitle(),
          _createAcctions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
      ),
    ));
  }

  Widget _createImage() {
    return Image(
        fit: BoxFit.cover,
        image: NetworkImage('https://images7.alphacoders.com/848/848309.jpg'));
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Wonderful bridge over lake', style: titleStyle),
                  SizedBox(height: 7.0),
                  Text('Location: Germany', style: subtitleStyle)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createAcctions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _acction(Icons.call, 'CALL'),
        _acction(Icons.near_me, 'ROUTE'),
        _acction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _acction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Adipisicing enim laboris eiusmod deserunt duis irure velit ullamco ex. Occaecat in cillum laborum exercitation dolore. Ad ex pariatur aute anim elit. Aliqua magna irure reprehenderit do nisi cillum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
