public class MathPractice {
    public Decimal practiceFour(Decimal amount){
        if (amount<= 0) {
            System.debug('Hatali bir deger girdiniz!');  
        }else if (amount<49) {
            System.debug('Bonus kazanamadiniz!');
        }else if (amount<199){
            String bonus1 = '';
            System.debug(amount + '$ tutarindaki alisveris karsiligi ' + bonus1 + ' bonus kazandiniz.');
        }else if(amount<499){
            String bonus2 = '';
            System.debug(amount + '$ tutarindaki alisveris karsiligi ' + bonus2 +' bonus kazandiniz.');
        }else{
            String bonus3 = '';
            System.debug(amount + '$ tutarindaki alisveris karsiligi ' +bonus3 + ' bonus kazandiniz.');
        }
        return amount;   
        }     
}

