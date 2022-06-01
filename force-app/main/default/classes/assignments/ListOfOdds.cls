public class ListOfOdds {
    public ListOfOdds() {
        System.debug('Welcome!');
    }
    public void oddNumbers(Integer num){
        List<Integer> oddNumList = new List<Integer>();

            for( Integer i= 0; i<= num; i++){
                if(Math.mod(i, 2)!=0){
                    oddNumList.add(i);
                }
            }
            System.debug('Odd numbers list: ' + oddNumList);
    }
}
