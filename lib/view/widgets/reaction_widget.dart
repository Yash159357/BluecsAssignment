import 'package:flutter/material.dart';

class ReactionWidget extends StatelessWidget {
  final int totalReactions;
  final int secondaryCount;
  final VoidCallback? onTap;

  const ReactionWidget({
    super.key,
    this.totalReactions = 325,
    this.secondaryCount = 50,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40, // Increased from 32 to make it bigger
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6), // More padding
        decoration: BoxDecoration(
          color: Color(0xFF1A1A1A), // Darker background
          borderRadius: BorderRadius.circular(20), // More rounded
          border: Border.all(
            color: Color(0xFF333333), // Lighter border for better definition
            width: 0.8,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              blurRadius: 10,
              offset: Offset(0, 4),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // First segment - 4 profile images
            Container(
              width: 64, // Increased width
              height: 24, // Increased height
              child: Stack(
                children: [
                  // First different image (bottom layer)
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 24, // Increased from 20
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/icons/subicon1.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)],
                                ),
                              ),
                              child: Icon(Icons.person, size: 12, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // Second image
                  Positioned(
                    left: 14,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/icons/subicon2.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFF9C27B0), Color(0xFF6A1B9A)],
                                ),
                              ),
                              child: Icon(Icons.person, size: 12, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // Third image
                  Positioned(
                    left: 28,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/icons/subicon2.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFF9C27B0), Color(0xFF6A1B9A)],
                                ),
                              ),
                              child: Icon(Icons.person, size: 12, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // Fourth image (top layer)
                  Positioned(
                    left: 40,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/icons/subicon2.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFF9C27B0), Color(0xFF6A1B9A)],
                                ),
                              ),
                              child: Icon(Icons.person, size: 12, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(width: 10),
            
            // Subtle vertical divider
            Container(
              width: 1,
              height: 20,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xFF444444),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            
            SizedBox(width: 10),
            
            // Second segment - Reaction images cluster
            SizedBox(
              width: 64, // Increased width
              height: 24,
              child: Stack(
                children: [
                  // First reaction (bottom layer)
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/reaction_1.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFF1877F2), Color(0xFF42A5F5)],
                                ),
                              ),
                              child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // Second reaction
                  Positioned(
                    left: 14,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/reaction_2.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFFE91E63), Color(0xFFAD1457)],
                                ),
                              ),
                              child: Icon(Icons.favorite, size: 12, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // Third reaction
                  Positioned(
                    left: 28,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/reaction_3.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFC107),
                              ),
                              child: Center(
                                child: Text('😊', style: TextStyle(fontSize: 12)),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // Fourth reaction (top layer)
                  Positioned(
                    left: 40,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF1A1A1A), width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/reaction_4.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [Color(0xFFFF5722), Color(0xFFD84315)],
                                ),
                              ),
                              child: Center(
                                child: Text('😮', style: TextStyle(fontSize: 12)),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(width: 8),
            
            // Total reactions count
            Text(
              '$totalReactions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14, // Slightly larger
                fontWeight: FontWeight.w600,
              ),
            ),
            
            SizedBox(width: 10),
            
            // Subtle vertical divider
            Container(
              width: 1,
              height: 20,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color(0xFF444444),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            
            SizedBox(width: 10),
            
            // Third segment - Secondary reaction icons
            Container(
              width: 18, // Increased from 16
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF333333), // Lighter background
              ),
              child: Icon(
                Icons.thumb_up_outlined,
                size: 11,
                color: Color(0xFF4A90E2), // Blue accent to match original
              ),
            ),
            
            SizedBox(width: 5),
            
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF333333),
              ),
              child: Icon(
                Icons.favorite_outline,
                size: 11,
                color: Color(0xFFE91E63),
              ),
            ),
            
            SizedBox(width: 8),
            
            // Secondary count
            Text(
              '$secondaryCount',
              style: TextStyle(
                color: Color(0xFFB0B0B0), // Lighter grey for better visibility
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Enhanced usage example with better positioning
class NewsCardWithReactions extends StatelessWidget {
  final Widget newsCard;
  
  const NewsCardWithReactions({
    super.key,
    required this.newsCard,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20), // More space for the larger floating widget
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Your existing news card
          newsCard,
          
          // Reaction widget positioned at the bottom with proper elevation
          Positioned(
            bottom: -12,
            left: 20,
            child: ReactionWidget(
              totalReactions: 5000,
              secondaryCount: 100,
              onTap: () {
                print('Reactions tapped');
              },
            ),
          ),
        ],
      ),
    );
  }
}