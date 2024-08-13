import 'package:flutter/material.dart';
import 'package:pay_in_app/src/config/locale/app_localizations.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/earnings_card.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/in_out_comes_card.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/row_heading.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/total_balance_card.dart';
import 'package:pay_in_app/src/features/home/presentation/widgets/transactions_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage("assets/imgs/fin.png"),
                      radius: 20.0,
                    ),
                    title: Text(AppLocalizations.of(context)!
                        .translate('good_morning')!),
                    subtitle: Text(
                      "Mohamed",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    trailing: Icon(Icons.notifications_active_outlined),
                  ),
                ),
                // SizedBox(),
                TotalBalanceCard(),
                InOutComesCard(),
                RowHeading(
                  title: AppLocalizations.of(context)!.translate('earnings')!,
                  seeAll: AppLocalizations.of(context)!.translate('see_all')!,
                ),
                SingleChildScrollView(
                  scrollDirection: axisDirectionToAxis(AxisDirection.left),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EarningsCard(
                        title: "Upwork",
                        amount: 3000,
                        cardColor: Colors.redAccent,
                      ),
                      EarningsCard(
                        title: "Freepik",
                        amount: 3000,
                        cardColor: Colors.pinkAccent,
                      ),
                      EarningsCard(
                        title: "E-commerce",
                        amount: 2000,
                        cardColor: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                ),

                RowHeading(
                  title:
                      AppLocalizations.of(context)!.translate('transactions')!,
                  seeAll: AppLocalizations.of(context)!.translate('see_all')!,
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
                        title: "Adobe Illustrator",
                        subTitle: "Subscribtion Fee",
                        amount: "32.00",
                        type: "deposit",
                      ),
                      TransactionsCard(
                        icon: "laptop",
                        title: "Dribble",
                        subTitle: "Subscribtion Fee",
                        amount: "15.00",
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
                        type: "Income",
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
