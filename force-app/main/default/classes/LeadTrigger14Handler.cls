public class LeadTrigger14Handler {
    
    public static void afterInsertAndUpdateTrigger(List<Lead> myLeads){
        
        List<Task> myTasks = new List<Task>();
        
        for(Lead w : myLeads){
            
            if(w.Industry == 'Education'){
                
                Task tObj = new Task();
                tObj.Subject = 'The task is created after for the lead record!';
                tObj.WhoId = w.Id;     /* :sunglasses: */
                
                myTasks.add(tObj);
            }            
            
            insert myTasks;
        }
        
        
    }

}