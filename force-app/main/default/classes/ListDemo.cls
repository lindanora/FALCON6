public class ListDemo {
    public static String candidatesList(Integer indx) {
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('candidates are ' + listCandidates);

        // string valueAt3 = listCandidates[3];
        // we can also do this
        // String valueAt3 = listCandidates.get(3);
        // system.debug('value at index 3 ' + valueAt3);

        String retrnString = '';
        if(indx >= 0 && indx<listCandidates.size()){
            retrnString = listCandidates[indx];
        } else{                                       
            retrnString = 'No such value found';
        }
        return retrnString;
    }

    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        //get index 3 value.
        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];
        
        system.debug('list of random integers ' + listInteger);
        system.debug('value at index 3 is ' + index3value2);
    }

    public static void allCats(){
        cat falconsCat = new cat ('fluffykins', 'white');
        cat vitapCat = new cat ('simba', 'brown');

        List<cat> cats = new list<cat>();
        cats.add(falconsCat);
        cats.add(vitapCat);
        System.debug('all cats are ' + cats);
    }

    public static void allCars(){
        car lm =new car();
        lm.carColor = 'red';
        car bm = new car();
        bm.carColor = 'gray';

        List<car> cars = new list<car> ();
        cars.add(lm);
        cars.add(bm);
        System.debug('all cars are ' + cars);
    }

    public static void iterateIntegerList(){
        List<integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(16);

        for(Integer eachInteger : listInteger){
            System.debug(eachInteger);
        }
    }
}