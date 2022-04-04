import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DueDateButton extends StatefulWidget {
  const DueDateButton();
  @override
  State<DueDateButton> createState() => _DueDateButtonState();
}

class _DueDateButtonState extends State<DueDateButton> {
  late DateTime selectedDate;
  @override
  void initState() {
    selectedDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final screenHeight = MediaQuery.of(context).size.height;

    final dateFormat = DateFormat('d MMMM');
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(double.infinity, screenHeight * .08),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () async {
          final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(
              const Duration(days: 100),
            ),
          );
          if (pickedDate != null && pickedDate != selectedDate) {
            setState(() => selectedDate = pickedDate);
          }
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: colorScheme.onTertiary,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              child: Icon(
                Icons.calendar_today_outlined,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Due date',
                  style: textTheme.headline4,
                ),
                const SizedBox(height: 3),
                Text(
                  dateFormat.format(selectedDate),
                  style: textTheme.subtitle1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
