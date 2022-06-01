
public class NumberRecords {
    public static void numberCheck(Integer num, List<Integer> listOfNumbers){
        if(listOfNumbers.contains(num)){
            System.debug(num + ' is in the list.');
        }else{
            System.debug(num + ' is NOT in the list');
        }
    }
}
