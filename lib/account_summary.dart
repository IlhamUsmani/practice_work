import 'package:flutter/material.dart';

class AccountSummary extends StatelessWidget {
  const AccountSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Light background color
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9, // Adjust width
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white, // Background for the card
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Section
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Account Summary",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Rows for Data
              buildSummaryRow("Carbon Credits Available",
                  "20,000 (tons of CO2)", Colors.green),
              const SizedBox(height: 8),
              buildSummaryRow("Carbon Credits Sold", "20,000 (tons of CO2)",
                  Colors.blue.shade700),
              const SizedBox(height: 8),
              buildSummaryRow(
                  "Carbon Credits Earned", "20,000 (tons of CO2)", Colors.teal),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSummaryRow(String title, String value, Color color) {
    return Row(
      children: [
        // Title Column
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
        // Value Box
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
