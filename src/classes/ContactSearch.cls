public class ContactSearch {
	
    public static List<Contact> searchForContacts(String lastName, String mailingPostalCode){
        try {
            return [Select id,Name,FirstName,LastName,Email from Contact where LastName =:lastName and MailingPostalCode =:mailingPostalCode];
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' +
                        e.getMessage());
            return null;
        }
    }
}