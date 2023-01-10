import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listItems = [
    SizedBox(
      height: 30,
    ),
    ListTile(
      title: Text(
        "Netflix'te Popüler",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 117,
            image: NetworkImage(
                'https://www.filmler.com/wp-content/uploads/2021/11/seytan-tuyu.jpg'),
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            height: 117,
            image: NetworkImage(
                'https://i.pinimg.com/originals/97/21/84/972184f283c1f8a929a7f19df4bf033b.jpg'),
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            height: 117,
            image: NetworkImage(
                'https://ts2.mm.bing.net/th?q=En%20yeni%20Filmler%20Hd%20Izle'),
          ),
        ],
      ),
    ),
    SizedBox(
      height: 30,
    ),
    ListTile(
      title: Text(
        "Gündemdekiler",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 117,
            image: NetworkImage(
                'https://tr.web.img4.acsta.net/pictures/15/08/19/10/11/421353.jpg'),
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            height: 117,
            image: NetworkImage(
                'https://tr.web.img4.acsta.net/pictures/14/09/15/14/40/069342.jpg'),
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            height: 117,
            image: NetworkImage(
                'https://cdn1.ntv.com.tr/gorsel/8r99FG2PJUGjTpGqrpi15Q.jpg?width=1000&mode=crop&scale=both'),
          ),
        ],
      ),
    ),
    ListTile(
      title: Text(
        "İzlemeye Devam Edin",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 127,
            image: NetworkImage(
                'https://cdn1.ntv.com.tr/gorsel/MjQVOPOjd0ewJcAbSWnPaw.jpg?width=1000&mode=crop&scale=both'),
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            height: 127,
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/tr/a/af/HazineFilm.jpg'),
          ),
          SizedBox(
            width: 25,
          ),
          Image(
            height: 127,
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG26XFINbcq4xXQj9Qby_oM3wxMueZ2xTMxibLXuUvcO8ky8XFV40Q1aN7w4Nt3U_gOMs&usqp=CAU'),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 32, 32),
      appBar: AppBar(
        actions: [
          Image(
            image: AssetImage('assets/images/appbarlogo.png'),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        body: Center(
          child: ListView(
            children: listItems,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: GNav(
            color: Colors.white,
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                gap: 8,
                icon: Icons.home,
                text: "Anasayfa",
              ),
              GButton(
                gap: 8,
                icon: Icons.search,
                text: "Arama Yap",
              ),
              GButton(
                gap: 8,
                icon: Icons.notifications,
                text: "Bildirimler",
              ),
              GButton(
                gap: 8,
                icon: Icons.settings,
                text: "Ayarlar",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
