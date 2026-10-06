import 'package:flutter/material.dart';

class JointInvestApp extends StatelessWidget {
  const JointInvestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joint Invest',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1257D6)),
        scaffoldBackgroundColor: const Color(0xFF07111F),
      ),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF073B8C), Color(0xFF07111F), Color(0xFF8E1025)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: const Padding(
                padding: EdgeInsets.all(24),
                child: _AccountCard(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xE6121C2B),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Joint Invest', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white)),
            const SizedBox(height: 8),
            const Text('Create a shared account, contribute equally and approve withdrawals together.', style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 28),
            FilledButton(onPressed: null, child: Text('Create joint account')),
            const SizedBox(height: 12),
            OutlinedButton(onPressed: null, child: Text('Join with PIN / QR')),
          ],
        ),
      ),
    );
  }
}
