public with sharing class CaseInvocable {
    
    @InvocableMethod(label = 'Send Email & Save Activity'
                    description = 'Sens an email and saves as an activity'
                    category = 'Case')
    public static void sendEmail(list<FlowInput> inputs){
        FlowInput input = inputs[0];
        list<Messaging.SingleEmailMessage> msgs = new list<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactId);
        msg.setSaveAsActivity(true);
        msg.setSubject('Case created: ' + input.caseNumber);
        msg.setPlainTextBody('Hello there \n A case has been created for you to answer your query. ' 
                            + '\n One of our customer representative will reachout to you. Stay Tuned!' 
                            + '\n Thank you!');

        msgs.add(msg);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(msgs);
        for(Messaging.SendEmailResult result: results){
            if(result.isSuccess()){
                // create success log
                system.debug('Successfully sent!');

            }else{
                // create a log
                system.debug(result.getErrors());
            }
        }

    }

    // wrapper class:
    public class FlowInput{
        @invocableVariable(label = 'Case Number'
                            description = 'To get case number'
                            required = true)
        public string caseNumber;
        @invocableVariable(label = 'Contact Id'
                            description = 'To grab contact id'
                            required = true)
        public Id contactId;
    }
}