package builder;

public class LunchOrderDemo {
  public static void main(String[] args) {
    LunchOrder.Builder builder = new LunchOrder.Builder();
    builder.bread("wheat").condiments("lettuce").dressing("mustard");

    LunchOrder lunchOrder = builder.build();
    System.out.println(lunchOrder.getDressing());
    System.out.println(lunchOrder.getMeat());
  }
}
