public with sharing class AccountQueueableExample implements Queueable{
    // we can pass sObject in queueable apex
    public list<account> accList;
    // parameterized constructor
    public AccountQueueableExample(list<account> accList){
        this.accList = accList;
    }
    // there is only one mandatory method in queueable: execute
    public void execute(QueueableContext qc){
        for (account a : accList) {
            // update the account name
            a.Name = a.Name + ' -- SI';
        }
        update acclist;
    }
}