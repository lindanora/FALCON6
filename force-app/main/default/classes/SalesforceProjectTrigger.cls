trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger called');
        SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newmap.keyset());
        system.debug('future method called already. second method calling.');
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.new);
    }
}