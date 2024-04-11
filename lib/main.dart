import 'package:flutter/material.dart';

//-----GLOBAL VARIABLES-----
final Color mainColor = Color.fromARGB(255, 1, 57, 211);
final List<MountModel> mountItems = [
  MountModel(
      path:
          'https://images.unsplash.com/photo-1555507036-ab1f4038808a?q=80&w=1926&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Пекарня',
      description:
          'Откройте для себя мир изысканных вкусов и ароматов в нашей уютной булочной! Здесь вы найдёте свежие, только что из печи, булочки, круассаны и другие лакомства, которые поднимут ваше настроение и зарядят энергией на весь день. Приходите к нам за тёплыми воспоминаниями и наслаждением от каждого кусочка!',
      location: 'Хлебобулочные изделия'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1621303837174-89787a7d4729?q=80&w=1936&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Кондитерская',
      description:
          'Откройте для себя мир сладких искушений в нашей уютной кондитерской! Здесь вы найдёте самые вкусные пирожные, торты и шоколад, созданные с любовью и заботой о каждом ингредиенте. Насладитесь неповторимыми вкусами и ароматами, которые запомнятся вам надолго. Не упустите возможность порадовать себя и своих близких нашими чудесными десертами!',
      location: 'Торты и пирожные'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1545601445-4d6a0a0565f0?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Бакалея',
      description:
          'Откройте для себя мир свежести и разнообразия в нашей бакалее! У нас вы найдёте всё необходимое для приготовления вкусных блюд и создания уютной атмосферы вашего дома. Запаситесь продуктами на неделю и наслаждайтесь комфортом и качеством нашей продукции. Приходите к нам за успехом в кулинарии и радостью от каждого похода в магазин!',
      location: 'Сахар, чай, макароны и т д'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1550583724-b2692b85b150?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Молочный отдел',
      description:
          'Откройте для себя мир свежести и пользы в нашем молочном отделе! Здесь вы найдёте широкий ассортимент молока, йогуртов, творога и других молочных продуктов от лучших производителей. Порадуйте себя и своих близких вкусными и здоровыми завтраками, обедами и ужинами. Не упустите возможность сделать свою жизнь вкуснее и полезнее с нашим молочным отделом!',
      location: 'Молоко, творог, все виды сыра и т д'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Мясо',
      description:
          'Откройте для себя мир свежести и вкуса в нашей лавке мясника! Здесь вы найдёте широкий выбор высококачественных мясных продуктов от проверенных поставщиков. Мы предлагаем натуральные, экологически чистые продукты, которые станут основой для ваших кулинарных шедевров. Заходите к нам за свежестью, разнообразием и отличным настроением!',
      location: 'Все виды мяса'),
  MountModel(
      path:
          'https://plus.unsplash.com/premium_photo-1674498271296-5144c596b43c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Живая рыба',
      description:
          'Откройте для себя удивительный мир живой рыбы в нашем отделе! Здесь вы найдёте самых свежих и разнообразных обитателей водных глубин. Окунитесь в атмосферу свежести и чистоты, выберите рыбу на свой вкус и приготовьте настоящий кулинарный шедевр. Не упустите возможность порадовать себя и своих близких настоящим живым уловом!',
      location: 'Морская и речная рыба'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1610492219815-f76905e3f084?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Фрукты и овощи',
      description:
          'Приглашаем вас в наш уютный отдел «Фрукты и овощи»! Здесь вы найдёте свежие, натуральные и полезные продукты, которые станут основой для ваших кулинарных шедевров. Богатый выбор фруктов, овощей, зелени и специй порадует даже самого взыскательного гурмана. Не упустите возможность приобрести качественные продукты по доступным ценам!',
      location: 'Фрукты и овощи'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1497534446932-c925b458314e?q=80&w=1972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Напитки',
      description:
          'Откройте для себя мир ярких вкусов и ароматов в нашем отделе напитков! Здесь вы найдёте разнообразные соки, газированные напитки, воду и многое другое. Порадуйте себя освежающими напитками, которые зарядят вас энергией и поднимут настроение. Не упустите возможность насладиться лучшими вкусами нашего времени в нашем отделе напитков!',
      location: 'Все виды напитков на любой вкус'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1547558840-8ad6c8e662a2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Готовая кухня',
      description:
          'Откройте для себя мир готовых блюд в нашем отделе «Готовая кухня»! Здесь вы найдёте разнообразные блюда на любой вкус: от классических до экзотических. Готовьте быстро, вкусно и с удовольствием благодаря нашим удобным упаковкам и рецептам. Наслаждайтесь домашней кухней без лишних хлопот!',
      location: 'Горячее, салаты и обеды'),
  MountModel(
      path:
          'https://images.unsplash.com/photo-1621800973389-768626d38a0c?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Колбасы',
      description:
          'Откройте для себя разнообразие колбасных изделий в нашем отделе! У нас вы найдёте колбасы, сосиски, ветчину и другие мясные деликатесы. Мы предлагаем только высококачественные продукты от проверенных производителей. Порадуйте себя и своих близких вкусными закусками и горячими блюдами с нашей колбасой!',
      location: 'Колбасы на любой вкус'),

  
];

List<AppBottomBarItem> barItems = [
    AppBottomBarItem(icon: Icons.home, label: 'Каталог', isSelected: true),
    AppBottomBarItem(icon: Icons.turned_in_not, label: 'Акции', isSelected: false),
    AppBottomBarItem(icon: Icons.trolley, label: 'Корзина', isSelected: false),
    AppBottomBarItem(icon: Icons.person_outline,label: 'Профиль', isSelected: false),
    AppBottomBarItem(icon: Icons.phone,label: 'Контакты', isSelected: false),
  ];




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
          Expanded(
            child: AppMountListView()     
          ),
          AppBottomBar()
        ],
      )
    );
  }
}



class DetailsPage extends StatelessWidget {

  MountModel mount;

  DetailsPage(this.mount);

  @override
  Widget build(BuildContext context) {
    var selectedItem = mount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(selectedItem.path),
                          fit: BoxFit.cover
                        )
                      ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7)
                          ],
                          begin: Alignment.center, end: Alignment.bottomCenter
                        )
                      )
                    )
                  ),
                  Positioned(
                    bottom: 30, left: 30, right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(selectedItem.name,
                          style: TextStyle(
                            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold
                          )
                        ),
                        Text(selectedItem.location,
                          style: TextStyle(color: Colors.white, fontSize: 20)
                        ),
                      ]
                    )
                  ),
                  AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    iconTheme: IconThemeData(color: Colors.white),
                    title: Center(
                      child: Icon(Icons.price_change_outlined, color: Colors.white, size: 40)
                    ),
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Icon(Icons.pending,color: Colors.white, size: 30)
                      )
                    ]
                  )
                ],
              )
            )
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Text('${selectedItem.name}', 
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Text('${selectedItem.description}', style: TextStyle(fontSize: 12))
                      )
                    ],
                  )
                ),
              ],
            )
          )
        ],
      )
    );
  }
}


//-----WIDGETS-----

class AppMountListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          MountModel currentMount = mountItems[index];

          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetailsPage(currentMount))
              );
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(currentMount.path),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currentMount.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Text(currentMount.location,
                    style: TextStyle(
                      color: Colors.white
                    )
                  )
                ]
              )
            ),
          );
        }
      )
    );
  }
}


class DetailsRatingBar extends StatelessWidget {

  var sampleRatingData = {
    'Rating': '4.6',
    'Price': '\$12',
    'Open': '24hrs'
  };
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          sampleRatingData.entries.length,
          (index) => Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.2), width: 2
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(sampleRatingData.entries.elementAt(index).key,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                  ),
                  Text(sampleRatingData.entries.elementAt(index).value, style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    )
                  )
                ]
              )
          )
        )
      )
    );
  }
}

class DetailsBottomActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: mainColor,
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor:Colors.white.withOpacity(0.2),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(21),
                  child: Text('Book Now', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)
                  )
                ),
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(color: mainColor, width: 2)
            ),
            child: Icon(Icons.turned_in_not, color: mainColor, size: 25)
          )
        ]
      )
    );
  }
}


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

class MountModel {
  String path;
  String name;
  String location;
  String description;

  MountModel({
    this.path = '',
    this.name = '',
    this.location = '',
    this.description = ''
  });
}

