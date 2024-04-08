import 'package:flutter/material.dart';

//-----GLOBAL VARIABLES-----
final Color mainColor = Color.fromARGB(255, 1, 57, 211);


//-----MAIN METHOD-----
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: SplashPage()
    )
  );
}

//-----PAGES-----
// splash page
class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
      color: mainColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            
            child: Icon(Icons.price_change_outlined, color: Colors.white, size: 90),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
              )
            )
          )
        ],
      )
    );
  }
}

// landing page
class MountsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Icon(
            Icons.price_change_outlined, 
            color: mainColor, 
            size: 40
          )
        ),
        actions: [
          SizedBox(width: 40, height: 40)
        ],
        iconTheme: IconThemeData(color: mainColor)
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.price_change_outlined, color: Colors.white, size: 80)
        )
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          AppBottomBar()
        ],
      )
    );
  }
}

//-----WIDGETS-----
class AppHeader extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              'https://avatars.githubusercontent.com/u/5081804?v=4',
              width: 50,
              height: 50,
              fit: BoxFit.cover
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text('Добрый день',
                style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold
                )
              ),
              Text('Добро пожаловать!',
                style: TextStyle(
                  color: mainColor, 
                  fontSize: 12
                )
              )
            ]
          )
        ],
      )
    );
  }
}

class AppSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Онлайн супермаркет',
            style: TextStyle(
              fontWeight: FontWeight.w900, 
              fontSize: 25
            )
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Text('Поиск товара, позиции или производителя', style: TextStyle(color: Colors.grey))
                    ]
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.trolley, color: Colors.white)
              )
            ],
          )
        ],
      )
    );
  }
}
class AppBottomBar extends StatefulWidget {
  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {

  List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Каталог', isSelected: true),
    AppBottomBarItem(icon: Icons.turned_in_not, label: 'Акции', isSelected: false),
    AppBottomBarItem(icon: Icons.trolley, label: 'Корзина', isSelected: false),
    AppBottomBarItem(icon: Icons.person_outline,label: 'Профиль', isSelected: false),
    AppBottomBarItem(icon: Icons.phone,label: 'Контакты', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: 
        List.generate(barItems.length, (index) {
            AppBottomBarItem currentBarItem = barItems[index];

            Widget barItemWidget;

            if (currentBarItem.isSelected) {
              barItemWidget = Container(
                padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: mainColor
                ),
                child: Row(
                  children: [
                    Icon(currentBarItem.icon, color: Colors.white),
                    SizedBox(width: 5),
                    Text(currentBarItem.label, style: TextStyle(color: Colors.white))
                  ]
                )
              );
            }
            else {
              barItemWidget = IconButton(
                icon: Icon(currentBarItem.icon, color: Colors.grey),
                onPressed: () {
                  setState(() {
                    barItems.forEach((AppBottomBarItem item) {
                      item.isSelected = item == currentBarItem;
                    });
                  });
                }
              );
            }

            return barItemWidget;
          }
        )
      )
    );
  }
}

class AppBottomBarItem {
  IconData? icon;
  bool isSelected; 
  String label;

  AppBottomBarItem({
    this.icon,
    this.label = '',
    this.isSelected = false
  });
}