
//1. Create a class with constructor to show welcome message:
public with sharing class DemoDmlClass {
    public DemoDmlClass() {
        System.debug('Welcome to the world of SOQL! Please enter the key character to search.');
    }
    //2. Create a method with parameter (keychar)
    public static void dmlInsert(string keychar) {
        //3. Check if we have any records with the given keychar
        string likevar = '%' +keychar + '%';
        list<account> lstAccounts = [select id, name from Account where Name like :likevar];
        //4. if yes, we will create contact list  
        if (lstAccounts.size()>0) {
            List<Contact> lstContacts = new List<Contact>();
            //5.we will use account name as contact name (last name is a required field in contacts)
            for (account eachAcc : lstAccounts) {
                Contact Cont = new Contact();
                Cont.LastName = eachAcc.Name;
                //we will connect accounts and contacts with accountid. there is lookup relationship between account and contact
                Cont.AccountId = eachAcc.Id;
                //we will add cont to the contact list
                lstContacts.add(Cont);
        }
        if (lstContacts.size() > 0) { //always check the size of the list first
            insert lstContacts;   //DML!!
        }   
        }   
    }
}
