public class AccountHandlerInfo {
    public static List<Account> insertNewAccount(list<string> lstString ) {
        if (lstString.size()>0) {
            List<Account> lstAcc =new List<Account>();
            for (string str : lstString) {
                Account acc = new Account();
                Acc.Name = str;
                lstAcc.add(acc);  
            }
            insert lstAcc;
            return lstAcc;
        }else{
            System.debug('Please add some values in the list and then call the apex class.');
            return null;
        }     
    }   
}

