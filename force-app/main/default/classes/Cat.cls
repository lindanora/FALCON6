public class Cat {
    public String name;
    public String color;

    public Cat() {
        System.debug('constractor called.');
    }

    public Cat(String n, String c) {
        this.name = n;
        this.color = c;
        sleeping();
    }
    public void sleeping(){
        System.debug(this.name + ' is sleeping.');
    }
}       
