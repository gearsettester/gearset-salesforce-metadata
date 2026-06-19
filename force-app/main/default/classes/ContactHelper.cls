public class ContactHelper {
    public static List<Contact> getContactsByAccount(Id accountId) {
        return [SELECT Id, FirstName, LastName, Email, Phone
                FROM Contact
                WHERE AccountId = :accountId];
    }
    
    public static void updateContactTitle(Id contactId, String newTitle) {
        Contact c = [SELECT Id, Title FROM Contact WHERE Id = :contactId LIMIT 1];
        c.Title = newTitle;
        update c;
    }
}
