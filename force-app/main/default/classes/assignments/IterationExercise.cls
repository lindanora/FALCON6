public class IterationExercise {
    public static integer getMultiplicationTable(integer num){
        integer result;
        for (integer i =1; i<= num; i++){
            result = i*num;
            System.debug(i + ' X ' + num + ' = ' + result);
        }
        return result;
    }
}
