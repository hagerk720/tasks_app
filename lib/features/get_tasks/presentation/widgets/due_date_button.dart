import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class DueDateButton extends StatelessWidget {
  const DueDateButton({
    required this.selectedDate,
    required this.onChanged,
  });
  final void Function() onChanged;
  final DateTime selectedDate;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
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
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(
              double.infinity,
              MediaQuery.of(context).size.height * .07,
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: onChanged,
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
                  AppLocalizations.of(context)!.dueDate,
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
