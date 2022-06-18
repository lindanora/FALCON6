@RestResource(urlMapping = '/ContactCustomBulk/*')
global with sharing class CustomContactBulkAPI {
    @httpPost
    global static list<contact> createContacts(list<CreateContactWrapper> contacts) {
        List<Contact> listContacts = New list<contact>();
        for (CreateContactWrapper con : contacts) {
            
            
        }

    }
}
