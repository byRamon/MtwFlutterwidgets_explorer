import 'package:flutter/cupertino.dart';

class CardScreen extends StatefulWidget {
  CardScreen({Key key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  var imgPlaceHolder = new AssetImage(
      'assets/cupertino_activity_indicator.gif');
  var imgNet = new NetworkImage(
      "https://az837918.vo.msecnd.net/publishedimages/Listings/1654/es-MX/images/1/park-lake-campground-L-17.jpg");
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