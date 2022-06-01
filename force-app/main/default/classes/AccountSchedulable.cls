public class AccountSchedulable implements Schedulable{
    public void execute(SchedulableContext SC){
        database.executeBatch(new accountsBatch());
    } 
}
