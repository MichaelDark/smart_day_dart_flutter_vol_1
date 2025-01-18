void main() {
  dynamic dynamicToaster = Toaster();
  dynamicToaster.makeSandwich();

  // Example below shows:
  // > The method 'makeSandwich' isn't defined for the type 'Toaster'.
  // > Try correcting the name to the name of an existing method, or defining a method named 'makeSandwich'.
  // > code: undefined_method
  //
  // Error can be suppressed in analysis_options.yaml.
  // Use with caution.
  // final Toaster staticToaster = Toaster();
  // staticToaster.makeSandwich();
}

class Toaster {
  // Unless you override noSuchMethod, using a non-existent member,
  // results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ${invocation.memberName}');
  }
}
