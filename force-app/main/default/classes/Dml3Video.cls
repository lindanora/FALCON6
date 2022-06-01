public class Dml3Video {
    public static void orphanContactsToDefaultAcc() {
        List<Contact> listOrpCnt = [select id, AccountId from contact where AccountId = null and leadsource != 'Partner Referral'];
        List<Contact> updatedContactList = new List<Contact>();
        Account defaultAcc = [select id from Account WHERE name = 'DEFAULT' limit 1]; 
        for (contact eachContact : listOrpCnt) {
            eachContact.AccountId = defaultAcc.id;
            updatedContactList.add(eachContact);  
        }
        update updatedContactList;   
    }
}
