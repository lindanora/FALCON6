Trigger AssetTrigger on Asset (after insert){
    if (Trigger.isAfter) {
        AssetTriggerHandler.countTriggerRan++;
        AssetTriggerHandler.numberOfRecordsInserted+=Trigger.size;
        System.debug('trigger called');
        System.debug('trigger ran count = ' + AssetTriggerHandler.countTriggerRan);
        System.debug('number of records inserted = ' + AssetTriggerHandler.numberOfRecordsInserted);   
    }
}
