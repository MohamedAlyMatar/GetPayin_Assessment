import 'package:flutter/material.dart';
import 'package:pay_in_app/src/config/routes/app_routes.dart';
import 'package:pay_in_app/src/core/widgets/display_num.dart';

class TotalBalanceCard extends StatelessWidget {
  const TotalBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Balance',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),
          NumberDisplay(
            number: 25000.40,
            size: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'My Wallet',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(width: 8.0),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16.0,
                child: IconButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Routes.walletscreen),
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 16.0,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
