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
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
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
                        if (constraints.maxWidth > 600) // Show image only on larger screens
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
                    );
                  },
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
              title: Text('Undergraduate Research Assistant for Virginia Tech Department of Biomedical Engineering and Mechanics'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('November 2022 - August 2023'), 
                  Text(
                    'Mobile developer for applications reducing risk of pregnant mothers through predictions of biomarkers by a convolutional neural network',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('Data Science Intern at Black Knight'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('May 2023 - September 2023'), 
                  Text(
                    'Implemented ML models to service customer service departments at mortgage banks, servicing over 2000 requests daily. Built out pipelines for model monitoring, retraining, and deployment',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('Machine Learning Researcher for Virginia Tech Grado Department of Industrial and Systems Engineering'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('December 2023 - May 2024'), 
                  Text(
                    'Developed applications of ML to accelerate global optimization techniques. Explore the use of Graph Neural Networks to solve quadtratically constrained quadratic programs',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('AI Engineer and Data Scientist at NuvoAir Medical'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('May 2024 - August 2024'), 
                  Text(
                    'Developed multi-agent AI applications to scale business operations. Developed models to predict patient behavior and target GTM campaigns. Refined and optimized DBT(data build tool) models and SQL scripts to improve efficiency of pipelines',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Theme.of(context).primaryColor),
              title: Text('Founder at Morph Labs'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('September 2024 - Present'), 
                  Text(
                    'Building the next generation of AI powered prosthetics. Lead all software initiatives: ML, mobile, and cloud development',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'https://morphlabs.tech',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}