public with sharing class CreateTaskForContact {
    public static void createTasks(string contactLastName) {
        string queryString = 'select id, name from contact where lastname like \'%' +contactLastName + '%\'';
        List<Contact> allContacts = database.query(queryString);

        List<Task> taskList = new List<Task>();
        for (contact eachCont : allContacts) {
            task t = new task();
            t.WhoId = eachCont.Id;
            t.Subject = 'Email';
            t.Description = 'a task for a contact';
            t.ActivityDate = date.today();
            taskList.add(t); 
        }
        if (!taskList.isEmpty()) {
            insert taskList;   
        } 
    }
    @testVisible
    private static void createOpps(list<contact> listContact){
        List<Opportunity> opps =new List<Opportunity>();
        for (contact c : listContact) {
            Opportunity o = new Opportunity();
            o.Name = 'opp for ct : ' + c.Name;
            o.StageName = 'New';
            o.CloseDate = date.today();
            o.ContactId = c.id;
            opps.add(o);  
        }
        if (!opps.isEmpty()) {
            insert opps;
        }
    }
}
