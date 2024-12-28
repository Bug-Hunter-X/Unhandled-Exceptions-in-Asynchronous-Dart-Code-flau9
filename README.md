# Unhandled Exceptions in Asynchronous Dart Code

This repository showcases a common error in Dart: insufficient error handling in asynchronous operations. The original `bug.dart` demonstrates the flawed code with inadequate exception handling. The improved `bugSolution.dart` presents a more robust solution. 

The core issue involves network requests and JSON decoding, where exceptions can occur due to network problems or malformed JSON data.  The solution adds more specific error checks, handling each possible failure condition distinctly. This helps in providing more informative feedback and better application resilience.
