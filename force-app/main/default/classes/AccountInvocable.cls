public with sharing class AccountInvocable {
    
    @InvocableMethod(label = 'Delete Closed Opps'
    description = 'Deletes all the closed opps when an account goes inactive or hold'
    category = 'Account')
    public static void deleteOpportunities(list<id> accountIds){
        List<Opportunity> opps = [SELECT id from Opportunity 
                                    WHERE AccountId IN : accountIds
                                    AND StageName In ('Closed Won', 'Closed Lost')];
        
        if(!opps.isEmpty()){
            delete opps;  
        }  
    }
}
