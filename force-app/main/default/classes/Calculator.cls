public class Calculator {
    public static void welcomeMessage(){
        System.debug('Welcome to Apex calculator!');
    }
    public static void printNewMessage(string msg){
        // use parameter variable name inside the method
        system.debug(msg);
    }
    public static void printNewMessage2(string msg, date dt){

    }
    public static Integer add(Integer a, Integer b){
        integer sum = a + b;
        return sum;
    }
    public static Integer add(integer a, integer b, integer c){
        return a+b+c;
    }
    public static integer  add(List<Integer> intList) {
        Integer sum = 0;
        // 10,15,20
        // sum = sum + 10;
        // sum = sum + 15;
        // sum = sum + 20;
        // we will use for each instead
        for (integer eachInt : intList) {
            System.debug('eachInt - '+ eachInt);
            sum += eachInt;
            System.debug('sum.. ' + sum);
        }
        return sum;
    }
}
