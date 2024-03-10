import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospitalityappproject/constant/screens/check_in_screens/check_in.dart';
import 'package:hospitalityappproject/constant/screens/check_in_screens/check_in_vacant.dart';
import 'package:hospitalityappproject/constant/screens/check_out_screens/check_out.dart';
import 'package:hospitalityappproject/constant/screens/status_screen.dart';
import 'package:hospitalityappproject/datagrid_table/status_datagrid.dart';
import 'package:hospitalityappproject/test_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // specify vsync: this
  }

  final List<Widget> _screens = [
    // Content for Home tab
    ContainerSwitchScreen(),
    StatusScreen(),

    // Content for Feed tab

    CheckOutScreen(),

    Container(
      color: Colors.pink.shade300,
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    )
  ];

  bool _showTabBar = false;

  void _toggleTabBarVisibility() {
    setState(() {
      _showTabBar = !_showTabBar;
    });
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              iconSize: 20,
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              // called when one tab is selected
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              // bottom tab items
              items: const [
                  BottomNavigationBarItem(
                      icon: Image(
                        image: AssetImage('assets/images/icons/status.png'),
                      ),
                      label: 'Status'),
                  BottomNavigationBarItem(
                      icon: Image(
                        image: AssetImage('assets/images/icons/checkin.png'),
                      ),
                      label: 'Check In'),
                  BottomNavigationBarItem(
                      icon: Image(
                          image:
                              AssetImage('assets/images/icons/checkout.png')),
                      label: 'Check Out'),
                  BottomNavigationBarItem(
                      icon: Image(
                          image: AssetImage('assets/images/icons/wakeup.png')),
                      label: 'Wake Up'),
                  BottomNavigationBarItem(
                      icon: Image(
                          image:
                              AssetImage('assets/images/icons/settings.png')),
                      label: 'Settings'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                ])
          : null,
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
            NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex,
              destinations: const [
                NavigationRailDestination(
                    icon: Image(
                        image: AssetImage('assets/images/icons/status.png')),
                    label: Text('Status')),
                NavigationRailDestination(
                    icon: Image(
                        image: AssetImage('assets/images/icons/checkin.png')),
                    label: Text('Check In')),
                NavigationRailDestination(
                  icon: Image(
                      image: AssetImage('assets/images/icons/checkout.png')),
                  label: Text('Check Out'),
                ),
                NavigationRailDestination(
                  icon: Image(
                      image: AssetImage('assets/images/icons/wakeup.png')),
                  label: Text('Wake Up'),
                ),
                NavigationRailDestination(
                  icon: Image(
                      image: AssetImage('assets/images/icons/settings.png')),
                  label: Text('Settings'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.search),
                  label: Text('Search'),
                ),
              ],
              backgroundColor: Color(0xffD9D9D9),
              indicatorShape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),

              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),

              unselectedLabelTextStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),
              // Called when one tab is selected
            ),
          Expanded(child: _screens[_selectedIndex])
        ],
      ),
    );
  }

  AppBar _buildAppBarWithTabs() {
    return AppBar(
      leading: Text('room 11'),
      automaticallyImplyLeading: true,
      title: TabBar(
        controller: _tabController,
        tabs: [
          Tab(text: 'Status'),
          Tab(text: 'Vacant'),
          Tab(text: 'Occupied'),
        ],
      ),
    );
  }

  AppBar _buildAppBarWithoutTabs() {
    return AppBar(
      backgroundColor: Color(0xffD9D9D9),
      title: Text('No Tab Bar'),
    );
  }
}
