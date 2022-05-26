import 'dart:io';

void main() {
  getEatPizza();
}

void getEatPizza() async {
  order();
  getPizzaOrdered().then((value) {
    eatAndPay(value);
  });
  // String pizza = await getPizzaOrdered();
  chatting();
}

void order() {
  print('Done ordering pizza');
}

Future<String> getPizzaOrdered() async {
  Duration waitTime = Duration(seconds: 4);

  /* sleep(waitTime);
  another method that is delay similar to sleep
  The difference between sleep and Future.delay is that sleep 
  work in main thread, while Future.delay runs in background thread
  */
  String pizza = 'No pizza yet';
  await Future.delayed(waitTime, () {
    pizza = 'Carnivore';
    print('Pizza delivered successfully');
  });
  // return pizza;
  // it can return like this or only pizza
  return Future<String>.value(pizza);
}

void chatting() {
  print('Chatting.....');
}

void eatAndPay(String pizza) {
  Duration waitTime = Duration(seconds: 4);
  sleep(waitTime);
  print('Paid $pizza on my way home');
}
