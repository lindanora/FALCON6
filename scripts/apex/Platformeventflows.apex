Custom_Notification__e  evt = new Custom_Notification__e();
evt.Message__c = 'Leads have been process successfully!';
evt.Initiator__c = 'Leads Processing Batch';
EventBus.publish(evt);