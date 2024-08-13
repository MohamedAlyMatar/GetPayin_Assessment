import 'package:flutter/material.dart';
import 'package:pay_in_app/src/config/locale/app_localizations.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/row_heading.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/transactions_card.dart';
import 'package:pay_in_app/src/features/wallet/presentation/widgets/add_card.dart';
import 'package:pay_in_app/src/features/wallet/presentation/widgets/credit_card.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/imgs/fin.png"),
                      radius: 20.0,
                    ),
                    title: Text(
                        AppLocalizations.of(context)!.translate('wallet')!),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: axisDirectionToAxis(AxisDirection.left),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      AddCard(),
                      CreditCard(
                        cardColor: Colors.white,
                        balance: 250000.00,
                        lastFourDigits: '5678',
                        clientName: 'Finn The Human',
                        expDate: '08/24',
                      ),
                      CreditCard(
                        cardColor: Colors.yellowAccent,
                        balance: 500000.00,
                        lastFourDigits: '1357',
                        clientName: 'Jake The Dog',
                        expDate: '08/24',
                      ),
                    ],
                  ),
                ),
                RowHeading(
                  title:
                      AppLocalizations.of(context)!.translate('transactions')!,
                  icon: Icon(Icons.tune_rounded),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Today"),
                      ),
                      TransactionsCard(
                        icon: "laptop",
                        title: "Dribble",
                        subTitle: "Subscribtion Fee",
                        amount: "15.00",
                        type: "deposit",
                      ),
                      TransactionsCard(
                        icon: "save",
                        title: "House",
                        subTitle: "Saving",
                        amount: "50.00",
                        type: "deposit",
                      ),
                      TransactionsCard(
                        icon: "shopping",
                        title: "Sony Camera",
                        subTitle: "Shopping Fee",
                        amount: "200.00",
                        type: "deposit",
                      ),
                      TransactionsCard(
                        icon: "visa",
                        title: "PayPal",
                        subTitle: "Salary",
                        amount: "32.00",
                        type: "deposit",
                      ),
                    ],
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
