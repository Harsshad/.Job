import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          '.job',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Login', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Register', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'India’s Home for Flexible Work.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Work When You Want. Post What You Need.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _featureCard(
                    icon: LucideIcons.briefcase,
                    title: 'Job Posters',
                    description:
                        'Post real-time openings for part-time, remote, or on-site jobs.',
                  ),
                  _featureCard(
                    icon: LucideIcons.search,
                    title: 'Job Seekers',
                    description:
                        'Find work that suits your schedule – from gigs to side hustles.',
                  ),
                ],
              ),
              const SizedBox(height: 30),
              _featureCard(
                icon: LucideIcons.shieldCheck,
                title: 'Verified Listings',
                description:
                    'Ensuring trusted connections with our verification system.',
              ),
              const SizedBox(height: 20),
              _featureCard(
                icon: LucideIcons.star,
                title: 'Community Reviews',
                description:
                    'Rate and review jobs and seekers to maintain quality.',
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(LucideIcons.rocket),
                  label: const Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _featureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.cyanAccent, size: 40),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
