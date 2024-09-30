import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme.dart'; // Replace with actual theme file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    CashbackScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Cashback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User greeting and notification icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane,',
                      style: AppTextStyles.heading1,
                    ),
                    Text(
                      'Good afternoon 👋',
                      style: AppTextStyles.body2,
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    // Handle notification click
                  },
                ),
              ],
            ),
            SizedBox(height: 20),

            // Wallet section
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fund Wallet',
                            style: AppTextStyles.body2.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '0987654321',
                            style: AppTextStyles.heading3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Wema Bank',
                            style: AppTextStyles.body2.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.visibility, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.white),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wallet Balance:',
                        style: AppTextStyles.body2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '₦10,000.00',
                        style: AppTextStyles.heading3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button click
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.primary,
                          backgroundColor: Colors.white,
                        ),
                        child: Text('Rates'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Instant actions section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Instant actions', style: AppTextStyles.heading2),
                Text('Show more', style: AppTextStyles.body2),
              ],
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildActionItem(Icons.phone_android, 'Airtime & Data'),
                _buildActionItem(Icons.tv, 'Cable TVs'),
                _buildActionItem(Icons.electric_bolt, 'Electricity Bills'),
                _buildActionItem(Icons.wifi, 'Internet Subscriptions'),
                _buildActionItem(Icons.sports_basketball, 'Bettings'),
                _buildActionItem(Icons.water_drop, 'Water Bills'),
              ],
            ),
            SizedBox(height: 30),

            // Cashback banner
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                children: [
                  Icon(Icons.attach_money, color: AppColors.primary),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cashbacks',
                          style: AppTextStyles.heading3,
                        ),
                        Text(
                          'Generate code, refer your friends and family and earn ₦500 on each person you refer.',
                          style: AppTextStyles.body2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // Recent Transactions section
            Text('Recent Transactions', style: AppTextStyles.heading2),
            SizedBox(height: 10),
            Center(
              child: Text('You have no Transactions yet',
                  style: AppTextStyles.body2),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build action items
  Widget _buildActionItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundColor: AppColors.secondary,
          child: Icon(icon, color: AppColors.primary, size: 30.0),
        ),
        SizedBox(height: 8),
        Text(label, style: AppTextStyles.body2, textAlign: TextAlign.center),
      ],
    );
  }
}

// Other placeholder screens
class CashbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cashback Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('More Screen'));
  }
}
