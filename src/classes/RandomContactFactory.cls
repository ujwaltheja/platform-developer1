public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numContact, String lastname){
        
        List<Contact> conList = new List<Contact>();
        for(Integer i= 0;i<numContact;i++){
            
            Contact con = new Contact();
            con.FirstName = 'Test'+i;
            con.LastName = lastname;
            con.Email ='test'+i+'@test.com';
            conList.add(con);
        }
        if(conList.size()>0){
            return conList;
        }
        else{
            return null;
        }
    }
}