import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int weight = 1; // المتغير الذي سيتم تحديثه عند الضغط على الأزرار

  void increment() {
    setState(() {
      weight++;
    });
  }

  void decrement() {
    setState(() {
      if (weight > 0) weight--; // منع القيم السالبة
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InformationContainer(
          text: "Weight",
          intail: weight, // تمرير القيمة إلى InformationContainer
          onIncrement: increment, // تمرير الدالة عند الضغط على زر +
          onDecrement: decrement, // تمرير الدالة عند الضغط على زر -
        ),
      ),
    );
  }
}

class InformationContainer extends StatelessWidget {
  final String text;
  final int intail;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  InformationContainer({
    super.key,
    required this.text,
    required this.intail,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
      ),
      child: Column(

        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: AppColors.textGrayColor,
            ),
          ),
          Text(
            "$intail",
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Row(

            children: [
              FloatingActionButton.small(
                onPressed: onDecrement, // تقليل الوزن عند الضغط
                shape: const CircleBorder(),
                backgroundColor: Colors.grey,
                child: const Icon(Icons.remove, color: Colors.white),
              ),
              FloatingActionButton.small(
                onPressed: onIncrement, // زيادة الوزن عند الضغط
                shape: const CircleBorder(),
                backgroundColor: Colors.grey,
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
