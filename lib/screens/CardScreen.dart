import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  CardScreen({Key key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  var imgPlaceHolder = new AssetImage(
      'assets/cupertino_activity_indicator.gif');
  var imgNet = new NetworkImage(
      "https://s1.1zoom.me/big0/870/USA_Parks_Lake_Houses_Fountains_Echo_Park_Lake_Los_566739_1280x854.jpg");
  bool loaded = true;
  
  @override
  void initState() {
    super.initState();
    this.imgNet.resolve(ImageConfiguration()).addListener(
        ImageStreamListener((ImageInfo image, bool synchronousCall) {
      if (mounted)
        setState(() => this.loaded = true );
    }));
  }     
  
  @override
  Widget build(BuildContext context) { 
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemBackground,
        child: CustomScrollView(slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cards'),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                _cardTipo1(),
                _cardTipo2(context),
                _cardTipo1(),
                _cardTipo2(context),
                _cardTipo1(),
                _cardTipo2(context),
                _cardTipo1(),
                _cardTipo2(context),
              ])
          )
        ])
    );
  }

  Widget _cardTipo1() {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(CupertinoIcons.photo_camera),
            title: Text('im card title'),
            subtitle: Text('this is the subtitle of the card, this is the subtitle of the card, this is the subtitle of the card, this is the subtitle of the card, '),
          )
        ],
      ),
    );
  }
  Widget _cardTipo2(BuildContext context) {
    final _card  = Stack(
      alignment: Alignment.bottomCenter,
      children : <Widget>[
        FadeInImage(
          placeholder: imgPlaceHolder, 
          image: imgNet,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 200),
        ),
        Opacity(
          opacity: .7,
          child: Container(
          width: double.infinity,
          height: 80,
          color: CupertinoColors.black,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('2020-07-04', style: TextStyle(color: CupertinoColors.white),),
              Text('Park Lake', style: TextStyle(color: CupertinoColors.white, fontSize: 25),),
              ],
            ),
          ),
        ),
      ]
    );

    return Container(
      //height: 150,
      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: CupertinoColors.systemGrey.withOpacity(.9), offset: Offset(5,5), blurRadius: 8),
          BoxShadow(color: CupertinoColors.systemGrey.withOpacity(1), offset: Offset(3,3), blurRadius: 8)
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: _card
      ),
    );
  }
}
                /*
            Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemBackground,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      width: 600,
                      height: 200,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: this.loaded ? imgNet : imgPlaceHolder,
                          fit: BoxFit.fill,
                        )
                      ),
                      //color: CupertinoColors.activeBlue,
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: CupertinoColors.black.withOpacity(0.5),
                                  //spreadRadius: 5,
                                  //blurRadius: 7,
                                  //offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '2020-06-07',
                                      style: TextStyle(color: CupertinoColors.systemGrey, fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Park Lake",
                                      style: TextStyle(color: CupertinoColors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 600,
                        height: 200,
                        decoration: BoxDecoration(
                            color: CupertinoColors.systemGrey6,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              height: 170,
                              decoration: BoxDecoration(
                              color: CupertinoColors.systemGrey6,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                              image: 
                                DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: this.loaded ? imgNet : imgPlaceHolder,
                                )
                              )
                            ),
                            Text('No tengo Texto',
                              style: TextStyle(color: CupertinoColors.black, fontSize: 12),
                              textAlign: TextAlign.left,
                              )
                          ],
                        )
                    ),
                  ],
                ))
          ]))
        ]));
  }
}
*/