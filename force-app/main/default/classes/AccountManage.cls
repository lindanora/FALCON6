public class AccountManage {
    public static void updateAccounts(List<Account> lstAcc) {
        List<Account> lstAccToUpdate = [select id, name, description, createdDate FROM account where id IN :lstAcc];
    
        for (account eachAcc : lstAccToUpdate) {
            eachAcc.Description = eachAcc.Name + ' ' + eachAcc.CreatedDate;   
        }
        update lstAccToUpdate;  
    }
    
}
