// implements Schedulable interface
public class AccountSchedulable implements Schedulable{
    // only one mandatory method
    public void execute(SchedulableContext SC){
        // in this example we are sust starting new batch class
        // this is apex, you can write here any apex code
        // we start a new batch execution we created earlier ==> AccountsBatch
        database.executeBatch(new accountsBatch());
    } 
}
