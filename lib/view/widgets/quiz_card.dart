import 'package:flutter/material.dart';
import 'package:home_page_design/view/widgets/reaction_widget.dart'; // Import the reaction widget

class QuizCard extends StatefulWidget {
  const QuizCard({super.key});
  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int? selectedOption;

  final List<String> options = [
    'Salary & Benefits',
    'Work-Life Balance',
    'Career Growth Opportunities',
    'Company Culture',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main quiz card
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E), // Darker background to match original
              borderRadius: BorderRadius.circular(16), // More rounded corners like original
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(18), // Slightly more padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '5 days ago',
                            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 12), // Lighter grey like original
                          ),
                          Spacer(),
                          Icon(Icons.visibility, color: Color(0xFF9E9E9E), size: 16),
                          SizedBox(width: 4),
                          Text(
                            '25k',
                            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'What is the most important factor when choosing a new job?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17, // Slightly larger like original
                          fontWeight: FontWeight.w600, // Less bold for sophistication
                          height: 1.3, // Better line height
                        ),
                      ),
                      SizedBox(height: 16),

                      // Quiz options
                      for (int i = 0; i < options.length; i++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOption = i;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10), // Slightly more spacing
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14, // Slightly more padding
                            ),
                            decoration: BoxDecoration(
                              color: selectedOption == i
                                  ? Color(0xFF4A90E2) // Blue accent to match original
                                  : Color(0xFF2A2A2A), // Darker unselected state
                              borderRadius: BorderRadius.circular(12), // More rounded like original
                              border: selectedOption == i
                                  ? null
                                  : Border.all(
                                      color: Color(0xFF3A3A3A), // Subtle border for unselected
                                      width: 1,
                                    ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  String.fromCharCode(65 + i) + '.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600, // Slightly less bold
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  options[i],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      SizedBox(height: 14),

                      // Author section
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18, // Slightly larger like original
                            backgroundColor: Color(0xFF4A90E2), // Blue accent to match original
                            child: Image.asset(
                              "assets/icons/tech_savvy_icon.png",
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.person, color: Colors.white, size: 18);
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TechSavvy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Content Creator',
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E), // Lighter grey
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
                                '50',
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
                                '8',
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
          
          // Reaction widget positioned at the bottom with elevation (matching news_card pattern)
          Positioned(
            bottom: -16, // More offset for better visual separation
            left: 24, // Better positioning
            child: ReactionWidget(
              totalReactions: 310,
              secondaryCount: 50,
              onTap: () {
                // Handle reaction tap
                print('Reactions tapped for quiz');
              },
            ),
          ),
        ],
      ),
    );
  }
}