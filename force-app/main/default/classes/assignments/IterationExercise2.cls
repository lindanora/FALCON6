public class IterationExercise2 {
    public static decimal getPerfectAverage(integer num1, integer num2){
        Integer sum = 0;
        Integer count = 0;
            for (integer i = num1; i<=num2; i++){
                sum+=i;
                count++;
            }
        Decimal ave = sum/count;
        System.debug('Average of ' + num1 + ' and ' + num2 + ' = ' + ave);
        return ave; 
    }
}  
