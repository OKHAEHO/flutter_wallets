import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color:
            isInverted ? Colors.white : const Color.fromARGB(255, 95, 101, 106),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted
                          ? const Color.fromARGB(255, 95, 101, 106)
                          : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: isInverted
                              ? const Color.fromARGB(255, 95, 101, 106)
                              : Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                          color: isInverted
                              ? const Color.fromARGB(255, 95, 101, 106)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 9),
                child: Icon(
                  icon,
                  color: isInverted
                      ? const Color.fromARGB(255, 95, 101, 106)
                      : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
