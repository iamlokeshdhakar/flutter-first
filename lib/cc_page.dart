import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(40),
    );
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.monetization_on_outlined,
          color: Colors.white,
        ),
        elevation: 0,
        title: Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter amount in USD',
                  fillColor: const Color.fromARGB(255, 223, 227, 228),
                  filled: true,
                  prefixIcon: Icon(Icons.monetization_on),
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
