trigger AccountToContact on Account (after insert) {

    //Example 1: When an Account is inserted, insert a contact related to Account
    
    if(Trigger.isAfter && Trigger.isInsert){
        List<Contact> contactList = new List<Contact>();  
        
        for(Account acc : Trigger.new){
            
      
            Contact yeni = new Contact(LastName=acc.Name + 'Contact' , AccountID = acc.Id);
            contactList.add(yeni);         
        }
        insert contactList;
    }
}