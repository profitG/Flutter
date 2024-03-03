import 'package:flutter/material.dart';

class currencyCard extends StatelessWidget {
  final Color bgColor, textColor;
  final String name, code, amount;
  final IconData icon;
  final double offset;

  const currencyCard({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offset),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            bottom: 20,
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
                      color: textColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 24,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 1.8,
                child: Transform.translate(
                  offset: const Offset(-15, 10),
                  child: Icon(
                    icon,
                    color: textColor,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
