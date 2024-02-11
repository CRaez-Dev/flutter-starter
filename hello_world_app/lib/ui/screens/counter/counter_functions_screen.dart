import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {
          //     clickCounter = 0;
          //   },
          //   icon: const Icon(Icons.refresh_rounded),
          // ),
          title: const Text("Counter Functions"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(clickCounter <= 1 ? "Click" : "Clicks",
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // FloatingActionButton(
            //     shape: const StadiumBorder(),
            //     onPressed: () {
            //       setState(() {
            //         clickCounter++;
            //       });
            //     },
            //     child: const Icon(Icons.plus_one)),
            CustomButton(
              icon: Icons.plus_one,
              onPress: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox(height: 10),
            // FloatingActionButton(
            //     shape: const StadiumBorder(),
            //     onPressed: () {
            //       setState(() {
            //         if (clickCounter == 0) {
            //           return;
            //         }
            //         clickCounter--;
            //       });
            //     },
            //     child: const Icon(Icons.exposure_minus_1_outlined)),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPress: () {
                setState(() {
                  if (clickCounter == 0) {
                    return;
                  }
                  clickCounter--;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.refresh,
              onPress: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPress;

  const CustomButton({super.key, required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        // shape: const StadiumBorder(), 
        elevation: 10,
        // backgroundColor: Colors.lightBlue,
        onPressed: onPress, child: Icon(icon));
  }
}
