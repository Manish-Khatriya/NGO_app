import 'package:flutter/material.dart';
import 'package:ngo_app/app_drawer.dart';
import 'package:ngo_app/app_colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text("KindHearts NGO"),
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Be the Change You Wish to See",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Partner with us to bring smiles and impact lives. Whether it’s a donation, spreading awareness, or hands-on help, every step counts!",
              style: TextStyle(fontSize: 16, color: AppColors.textDark.withOpacity(0.7)),
            ),
            const SizedBox(height: 30),

            // Action Cards
            Row(
              children: [
                _buildActionCard(
                  icon: Icons.favorite,
                  label: "Donate",
                  color: AppColors.cardDonate,
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                _buildActionCard(
                  icon: Icons.handshake,
                  label: "Support",
                  color: AppColors.cardSupport,
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                _buildActionCard(
                  icon: Icons.event,
                  label: "Events",
                  color: AppColors.cardEvents,
                  onTap: () {},
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Join Button
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.person_add_alt_1, color: Colors.white),
                label: const Text(
                  "Join as a Volunteer",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/volunteer-form');
                },
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: color.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: color, size: 30),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
