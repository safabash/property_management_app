import 'package:flutter/material.dart';

class ScreenInvoiceWindows extends StatefulWidget {
  const ScreenInvoiceWindows({super.key});

  @override
  State<ScreenInvoiceWindows> createState() => _ScreenInvoiceWindowsState();
}

class _ScreenInvoiceWindowsState extends State<ScreenInvoiceWindows> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('invoices'),);
  }
}