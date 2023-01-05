abstract class DemoEvent {}

class InitEvent extends DemoEvent {}

class Sum extends DemoEvent {
  String a,b;
  Sum(this.a,this.b);
}

class Mul extends DemoEvent {
  String a,b;
  Mul(this.a,this.b);
}

class Sub extends DemoEvent {
  String a,b;
  Sub(this.a,this.b);
}
class increment extends DemoEvent {

}
