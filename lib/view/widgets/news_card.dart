import 'package:flutter/material.dart';
import 'package:home_page_design/models/news_item.dart';
import 'package:home_page_design/view/widgets/reaction_widget.dart'; // Import the new widget

class NewsCard extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCard({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main news card
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E), // Darker background to match original
              borderRadius: BorderRadius.circular(16), // More rounded corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image section
                Stack(
                  children: [
                    Container(
                      height: 220, // Increased height for more elongated look
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                        color: Color(0xFF2A2A2A),
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                          child: Image.asset(
                            newsItem.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 12,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.translate, color: Colors.white, size: 16),
                      ),
                    ),
                  ],
                ),

                // Content section
                Padding(
                  padding: EdgeInsets.all(18), // Slightly more padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            newsItem.timeAgo,
                            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 12), // Lighter grey
                          ),
                          Spacer(),
                          Icon(Icons.visibility, color: Color(0xFF9E9E9E), size: 16),
                          SizedBox(width: 4),
                          Text(
                            newsItem.views,
                            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        newsItem.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17, // Slightly larger
                          fontWeight: FontWeight.w600, // Less bold for sophistication
                          height: 1.3, // Better line height
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        newsItem.subtitle,
                        style: TextStyle(
                          color: Color(0xFF9E9E9E), 
                          fontSize: 14,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 14),

                      // Author section
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18, // Slightly larger
                            backgroundColor: Color(0xFF4A90E2), // Blue accent to match original
                            child: Image.asset("assets/icons/tech_savvy_icon.png"),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                newsItem.author,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                newsItem.authorRole,
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E), 
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.close, color: Color(0xFF9E9E9E), size: 20),
                        ],
                      ),
                      SizedBox(height: 16),

                      // Actions section
                      Row(
                        children: [
                          // Comments
                          Row(
                            children: [
                              Icon(Icons.comment_outlined, color: Color(0xFF9E9E9E), size: 18),
                              SizedBox(width: 6),
                              Text(
                                '${newsItem.comments}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          // Shares
                          Row(
                            children: [
                              Icon(Icons.share_outlined, color: Color(0xFF9E9E9E), size: 18),
                              SizedBox(width: 6),
                              Text(
                                '${newsItem.shares}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.bookmark_outline, color: Color(0xFF9E9E9E), size: 22),
                        ],
                      ),
                      
                      // Add bottom padding for reaction widget
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Reaction widget positioned at the bottom with elevation
          Positioned(
            bottom: -16, // More offset for better visual separation
            left: 24, // Better positioning
            child: ReactionWidget(
              totalReactions: 5000,
              secondaryCount: 100,
              onTap: () {
                // Handle reaction tap
                print('Reactions tapped for ${newsItem.title}');
              },
            ),
          ),
        ],
      ),
    );
  }
}