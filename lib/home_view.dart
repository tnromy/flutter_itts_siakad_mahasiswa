import 'package:flutter/material.dart';
import './url_provider.dart';

class HomeView extends StatelessWidget {
  final urlM = UrlProvider();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // row 1
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                // row 1 image 1
                Container(
                  width: (MediaQuery.of(context).size.width) / 2,
                  child: InkWell(
                    onTap: () {
                      urlM.goToUrl(strUrl: "https://tnromy.com");
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                      ),
                    ),
                  ),
                ),
                
                // row 1 image 2
                Container(
                  width: (MediaQuery.of(context).size.width) / 2,
                  child: InkWell(
                    onTap: () {
                      urlM.goToUrl(strUrl: "https://tnromy.com");
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // row 2
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                // row 2 image 1
                Container(
                  width: (MediaQuery.of(context).size.width) / 2,
                  child: InkWell(
                    onTap: () {
                      urlM.goToUrl(strUrl: "https://tnromy.com");
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                      ),
                    ),
                  ),
                ),
                
                // row 2 image 2
                Container(
                  width: (MediaQuery.of(context).size.width) / 2,
                  child: InkWell(
                    onTap: () {
                      urlM.goToUrl(strUrl: "https://tnromy.com");
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
