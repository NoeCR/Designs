import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _firstPage(),
        _secondPage(),
      ],
    ));
  }

  Widget _firstPage() {
    return Stack(
      children: [_backgroundColor(), _backgroundImage(), _text()],
    );
  }

  Widget _secondPage() {
    return Stack(
      children: [_backgroundColor(), _wellcomeButton()],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _text() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Text('11º', style: textStyle),
          Text('Miercoles', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _wellcomeButton() {
    return Center(
      child: RaisedButton.icon(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            print('press');
          },
          icon: Icon(Icons.bubble_chart),
          label: Text('Wellcome', style: TextStyle(fontSize: 20.0))),
    );
  }
}
