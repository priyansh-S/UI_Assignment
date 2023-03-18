import 'package:flutter/material.dart';
import '../screens/exploreScreen.dart';
import 'package:provider/provider.dart';
import '../providers/MessageProvider.dart';
import '../providers/StoryProvider.dart';
import '../screens/StoryScreen.dart';
import '../screens/chatScreen.dart';
import '../screens/homePageScreen.dart';
import '../screens/profileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Items()),
        ChangeNotifierProvider(create: (context) => Messages()),
      ],
      // create: (context) => Items(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          const chatScreen().getRoute(): (context) => const chatScreen(),
          exploreScreen().getRoute(): (context) => exploreScreen(),
          const StoryScreen().getRoute(): (context) => const StoryScreen(),
          profileScreen().getRoute(): (context) => profileScreen(),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Social Media App'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size md = MediaQuery.of(context).size;

    final List<Widget> widgetScreens = [
      homePageScreen(mdh: md.height, mdw: md.width),
      // profileScreen(mdh: md.height, mdw: md.width),
      exploreScreen(),
      profileScreen(),
    ];

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            iconSize: 30,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: _changeIndex,
            // showSelectedLabels: false,
            showUnselectedLabels: false,
            // backgroundColor: Colors.black,
            // unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Explore',
                  backgroundColor: Color.fromARGB(255, 54, 101, 244)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined),
                  label: 'Profile',
                  backgroundColor: Color.fromARGB(255, 200, 0, 255)),
            ]),
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 32, 31, 36),
          elevation: 0,
          title: const Text(
            "Social Media App",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 27),
          ),
        ),
        body: widgetScreens.elementAt(_selectedIndex));
  }
}
