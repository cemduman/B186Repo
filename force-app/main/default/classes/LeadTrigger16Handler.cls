public class LeadTrigger16Handler {
    
   public static Boolean keyForLockTheDoor = true;
    
    public static void afterInsertHandlerLead(List<Lead> lead){
        
        
        if(keyForLockTheDoor){
            
            keyForLockTheDoor = false; //overwrite false on true and prevent recursion
                 Lead newLead = new Lead(LastName= 'Recursion Test B186', Company='Test RC', Industry='Finance');
     insert newLead;
            
        }  
        
 
    }
    
}