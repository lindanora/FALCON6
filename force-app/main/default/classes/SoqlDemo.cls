public class SoqlDemo {
    public static void accountSoql_1() {
        List<account> listAcc = [select id, name from account where name like '%A'];
        System.debug('account list = ' + listAcc);
        System.debug(' # of accounts = ' + listAcc.size());

        Account latestAcc = [Select Id, Name from Account ORDER BY CreatedDate DESC LIMIT 1];
        System.debug('latest account created is ' + latestAcc);
    }
    public static void accountSoql_2() {
        Account acc = [select Id, name, Phone, AccountNumber from Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug('latest account created is ' + acc);
        // store name in a variable
        String accName = acc.Name;
        String accPhone = acc.Phone;

        System.debug('accName = ' +accName + ' , phone is ' + accPhone);
        System.debug('account number is ' + acc.AccountNumber);    
    }
    public static void accountSoql_3() {
        List<account> listAcc = [Select Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC];
        System.debug('all accounts ' + listAcc);

        for (Account eachAccount : listAcc) {
            String accName = eachAccount.Name;
            String accphone = eachAccount.Phone;
            System.debug('accName = ' + accName + ' , phone is ' + accphone);
            System.debug('account number is ' + eachAccount.AccountNumber);     
        } 
    }
    public static void soqlDemo_Filter() {
        String accNameFilter = 'SoftInnovas';
        List<Account> listAcc = [select name from account where name = :accNameFilter];
        System.debug(listAcc);
    }
    public static void soqlDemo_Filter(string accNameFilter){
        List<Account> listAcc = [select id, name from Account where name = :accNameFilter];
        System.debug(listAcc);
    }
}
        
