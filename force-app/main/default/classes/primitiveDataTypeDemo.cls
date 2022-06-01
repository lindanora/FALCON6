public class primitiveDataTypeDemo {
    public void printBasicDataType(){
        String batchname = 'Falcons6';
        integer totalCandidate = 120;
        Boolean isadminCompleted = true;
        Decimal decValue = 27.01;
        // long value has L in suffix.
        Long longValue = 2147483648L;
        // creating data type 
        Object obj = 'This is a string';
        Object obj2 = 10;
        // ID represents salesforce ID
        ID id1 = '001D000000Ju1zH';

        system.debug('Batch name is ' + batchName);
        system.debug('Total number od candidates: ' + totalCandidate);
        system.debug('Admin completed? ' + isadminCompleted);
        system.debug('Decimal: '+ decValue);
        system.debug('Long: ' +longValue);
        system.debug(obj);
        system.debug(obj2);
        system.debug('Salesforce ID: ' + id1);
    }
}
