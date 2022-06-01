public class LoopDemo {
    public void print_int_while() {
        Integer count = 1;
        while (count<= 25) {
            System.debug(count);
            count++;
        }
    }

    public void print_N_numbers(Integer n){
        String s = '';
        for(Integer i = 0; i<n; i++){
            // System.debug(i);
            s += String.valueOf(i) + ',';
            // also we can write as below
            // s = s + String.valuOf(i) + ' , ';
        }
        System.debug('print 1 to N: ' + s);
    }
    public integer print_sum_n_numbers(Integer n){
        integer sum = 0;
        for (Integer i = 0; i <= n; i++) {
            sum += i;   
        }
        System.debug('summation is ' + sum);
        return sum;
    }
    public void print_N_Odd_numbers(integer startInt, integer endInt){
        for (Integer i = startInt; i <= endInt; i++){
            Integer modI = math.mod(i, 2);
            if (modI == 1) System.debug(i);    
        }     
    }
}
