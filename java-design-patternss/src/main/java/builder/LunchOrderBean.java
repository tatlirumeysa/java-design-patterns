package builder;

public class LunchOrderBean {
  public String bread;
  public String condiments;
  public String dressing;
  public String meat;

  public LunchOrderBean(){}
  //telescoping constructors also cant solve this problem

  public String getBread() {
    return bread;
  }

  public void setBread(String bread) {
    this.bread = bread;
  }

  public String getCondiments() {
    return condiments;
  }

  public void setCondiments(String condiments) {
    this.condiments = condiments;
  }

  public String getDressing() {
    return dressing;
  }

  public void setDressing(String dressing) {
    this.dressing = dressing;
  }

  public String getMeat() {
    return meat;
  }

  public void setMeat(String meat) {
    this.meat = meat;
  }
}
