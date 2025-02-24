/// Useful to validate and deconstruct small JSONs
void main() {
  final json = {
    'user': ['John', 13]
  };
  final {'user': [name, age]} = json;
  print('user $name is $age years old.');

  if (json case {'user': [String name, int age]}) {
    print('user $name is $age years old.');
  }

  if (json case {'user': [String name, String surname]}) {
    print('user $name $surname is present.');
  }

  final json2 = {
    'user': ['John', 'Doe']
  };
  if (json2 case {'user': [String name, String surname]}) {
    print('user $name $surname is present.');
  }
}
