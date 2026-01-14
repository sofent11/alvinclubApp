import 'package:flutter/material.dart';

class TrustRuleBottomSheet extends StatelessWidget {
  const TrustRuleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with Gradient
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFF0F5), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            "ALVIN'S CLUB",
                            style: TextStyle(
                              color: Color(0xFFFA3E3E),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'GLOBAL QUALITY PARTNER ALLIANCE',
                            style: TextStyle(
                              color: Color(0xFFFA3E3E),
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.close,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'This product comes with a genuine guarantee.',
                  style: TextStyle(color: Color(0xFFFA3E3E), fontSize: 12),
                ),
              ],
            ),
          ),

          // Content Box
          Container(
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFFFF0E6), width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  "Alvin's Club with strict control throughout the entire process",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'From procurement to customs clearance to worry-free logistics and after-sales service, we ensure quality products and reliable services for consumers.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 16),

                // Process Grid
                _buildProcessGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProcessGrid() {
    final steps = [
      _StepData(
        icon: Icons.shopping_bag_outlined,
        number: '01',
        title: 'Global Experienced Buyers',
      ),
      _StepData(
        icon: Icons.location_on_outlined,
        number: '02',
        title: 'On-site inspections',
        showArrow: true,
      ),
      _StepData(
        icon: Icons.flight_takeoff,
        number: '03',
        title: 'Official direct sourcing',
        showArrow: true,
      ),
      _StepData(
        icon: Icons.support_agent, // 06 - Reversed order in row 2
        number: '06',
        title: 'Third-party monitoring',
        isReversed: true,
      ),
      _StepData(
        icon: Icons.search,
        number: '05',
        title: 'Warehouse inspections',
        showArrow: true,
        isReversed: true,
      ),
      _StepData(
        icon: Icons.supervised_user_circle_outlined,
        number: '04',
        title: 'Regional management',
        showArrow: true,
        isReversed: true,
      ),
      _StepData(
        icon: Icons.local_shipping_outlined,
        number: '07',
        title: 'Premium quality shipping',
      ),
      _StepData(
        icon: Icons.headset_mic_outlined,
        number: '08',
        title: 'Gold star customer service',
        showArrow: true,
      ),
      _StepData(
        icon: Icons.verified_user_outlined,
        number: '09',
        title: 'Worry-free after-sales support',
        showArrow: true,
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 4,
        childAspectRatio: 0.75,
      ),
      itemCount: steps.length,
      itemBuilder: (context, index) {
        return _buildStepItem(steps[index]);
      },
    );
  }

  Widget _buildStepItem(_StepData data) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFFA3E3E),
                shape: BoxShape.circle,
              ),
              child: Icon(data.icon, color: Colors.white, size: 20),
            ),
            const SizedBox(height: 6),
            Text(
              data.number,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              data.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xFF666666),
                height: 1.1,
              ),
            ),
          ],
        ),
        if (data.showArrow)
          Positioned(
            right: data.isReversed ? null : -12,
            left: data.isReversed ? -12 : null,
            top: 12,
            child: Icon(
              data.isReversed
                  ? Icons.keyboard_arrow_left
                  : Icons.keyboard_arrow_right,
              color: const Color(0xFFFA3E3E).withValues(alpha: 0.5),
              size: 16,
            ),
          ),
      ],
    );
  }
}

class _StepData {
  final IconData icon;
  final String number;
  final String title;
  final bool showArrow;
  final bool isReversed;

  _StepData({
    required this.icon,
    required this.number,
    required this.title,
    this.showArrow = false,
    this.isReversed = false,
  });
}
