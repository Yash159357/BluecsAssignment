import 'package:flutter/material.dart';

import 'package:home_page_design/models/news_item.dart';
import 'package:home_page_design/view/widgets/news_card.dart';
import 'package:home_page_design/view/widgets/quiz_card.dart';
import 'package:home_page_design/view/widgets/insta_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  int _selectedTabIndex = 0;

  final List<String> _tabTitles = [
    'All Posts',
    'Videos',
    'Short Videos',
    'Near',
  ];

  final List<NewsItem> _newsItems = [
    NewsItem(
      title: 'Top 10 AI Tools You Should Know in 2025',
      subtitle: 'Stay Ahead with These Game-Changing AI Tools',
      author: 'TechSavvy',
      authorRole: 'Content Creator',
      timeAgo: '5 days ago',
      views: '25k',
      likes: 310,
      comments: 50,
      shares: 8,
      image: 'assets/news_images/image1.png',
    ),
    NewsItem(
      title: 'Top 10 AI Tools You Should Know in 2025',
      subtitle: 'Stay Ahead with These Game-Changing AI Tools',
      author: 'TechSavvy',
      authorRole: 'Content Creator',
      timeAgo: '5 days ago',
      views: '25k',
      likes: 310,
      comments: 50,
      shares: 8,
      image: 'assets/news_images/image2.png',
    ),
    NewsItem(
      title: 'Top 10 AI Tools You Should Know in 2025',
      subtitle: 'Stay Ahead with These Game-Changing AI Tools',
      author: 'TechSavvy',
      authorRole: 'Content Creator',
      timeAgo: '5 days ago',
      views: '25k',
      likes: 310,
      comments: 50,
      shares: 8,
      image: 'assets/news_images/image3.png',
    ),
    NewsItem(
      title: 'Discover the journey and mindset of this inspiring individual',
      subtitle: 'Stay Ahead with These Game-Changing AI Tools',
      author: 'TechSavvy',
      authorRole: 'Content Creator',
      timeAgo: '5 days ago',
      views: '25k',
      likes: 310,
      comments: 50,
      shares: 8,
      image: 'assets/news_images/image4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Color(0xFF2A2A2A),
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.white),
          title:
              _isSearching
                  ? Container(
                    height: 40,
                    child: TextField(
                      controller: _searchController,
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFF3A3A3A),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  )
                  : Container(
                    height: 40,
                    child: TextField(
                      onTap: () {
                        setState(() {
                          _isSearching = true;
                        });
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFF3A3A3A),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
          actions:
              _isSearching
                  ? [
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        setState(() {
                          _isSearching = false;
                          _searchController.clear();
                        });
                      },
                    ),
                  ]
                  : [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
        ),
      ),
      body: Column(
        children: [
          // Horizontal scrollable tabs
          Container(
            height: 45,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: _tabTitles.length,
              itemBuilder: (context, index) {
                bool isSelected = _selectedTabIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? Color.fromARGB(75, 30, 136, 229)
                              : Color(
                                0xFF424242,
                              ), // Changed blue shade and unselected color
                      borderRadius: BorderRadius.circular(25),
                      border:
                          isSelected
                              ? Border.all(
                                color: Color(0xFF1565C0),
                                width: 1.5,
                              ) // Added border for selected
                              : Border.all(
                                color: Color(0xFF616161),
                                width: 1,
                              ), // Subtle border for unselected
                    ),
                    child: Center(
                      child: Text(
                        _tabTitles[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight:
                              isSelected
                                  ? FontWeight.w600
                                  : FontWeight
                                      .w400, // Slightly different font weights
                          fontSize: 14, // Added consistent font size
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Main content
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                // News items
                ..._newsItems.map((newsItem) => NewsCard(newsItem: newsItem)),

                // Quiz section
                QuizCard(),

                // Instagram-like images section
                InstagramSection(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF2A2A2A),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
