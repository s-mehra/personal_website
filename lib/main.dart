import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $urlString');
  }
}

void main() {
  runApp(MyWebsite());
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soham Mehra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 56,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E1E1E),
            letterSpacing: -0.5,
            height: 1.2,
          ),
          headlineSmall: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1E1E1E),
            letterSpacing: -0.2,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Color(0xFF424242),
            height: 1.7,
            letterSpacing: 0.1,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF007AFF),
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
          ),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.withOpacity(0.1)),
          ),
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFFFAFAFA),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOHAM MEHRA', 
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1E1E1E),
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1200),
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left side content
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFF007AFF).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Welcome to my portfolio',
                              style: TextStyle(
                                color: Color(0xFF007AFF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'Building the future\nwith AI & ML',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          SizedBox(height: 24),
                          Container(
                            constraints: BoxConstraints(maxWidth: 500),
                            child: Text(
                              'I\'m an AI/ML Engineer passionate about creating intelligent solutions that make a difference. Currently pursuing Industrial and Systems Engineering at Virginia Tech.',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: ElevatedButton(
                                  onPressed: () => Navigator.pushNamed(context, '/about'),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("About Me"),
                                      SizedBox(width: 8),
                                      Icon(Icons.arrow_forward, size: 18),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: TextButton(
                                  onPressed: () => _launchURL('https://calendly.com/mehrasoham-mail'),
                                  style: TextButton.styleFrom(
                                    foregroundColor: Color(0xFF007AFF),
                                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                                  ),
                                  child: Text("Let's Meet!"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 60),
                    // Right side image
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          height: 400,  // Adjusted height
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/soham.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Social links at the bottom
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.linkedinIn),
                      onPressed: () => _launchURL('https://www.linkedin.com/in/soham-mehra/'),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.github),
                      onPressed: () => _launchURL('https://github.com/s-mehra'),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.envelope),
                      onPressed: () => _launchURL('mailto:mehrasoham.mail@gmail.com'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/soham.jpg'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    'I am a passionate software engineer with a strong foundation in data science and machine learning...',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Timeline or Career Journey
            Text(
              'Career Journey',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.school, color: Theme.of(context).primaryColor),
              title: Text('B.Sc in Industrial and Systems Engineering'),
              subtitle: Text('Virginia Tech - 2025'),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('Data Science Intern at Black Knight'),
              subtitle: Text('May 2023 - September 2023'),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('AI Engineer and Data Scientist at NuvoAir Medical'),
              subtitle: Text('May 2024 - August 2024'),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('Founder at Morph Labs'),
              subtitle: Text('September 2024 - Present'),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Personal Website',
      'description': 'Built with Flutter, showcasing my skills and projects.',
      'link': 'https://github.com/your-portfolio'
    },
    {
      'title': 'ML Project',
      'description': 'A deep learning model to classify images.',
      'link': 'https://github.com/your-ml-project'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PORTFOLIO',
          style: TextStyle(
            letterSpacing: 2,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2D3436),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 3 : 
                          MediaQuery.of(context).size.width > 800 ? 2 : 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.2,
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFF007AFF).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.code, color: Color(0xFF007AFF), size: 32),
                      ),
                      SizedBox(height: 24),
                      Text(
                        project['title']!,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(height: 12),
                      Text(
                        project['description']!,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // Launch project link
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Color(0xFF007AFF),
                          padding: EdgeInsets.zero,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Learn More'),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, size: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}