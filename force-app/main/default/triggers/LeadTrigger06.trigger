trigger LeadTrigger06 on Lead (before insert, before update) {
    
    //Example 7: When a new lead record is being created...
    //If industry is blank, assign 'Education' ot industry
    //
    //When a lead record is being updated
    //If industry is blank, assign 'Banking' to industry

    //best practice is categorizing the operation types at the beginning
    //bcs you can add some other operation types with different logics into trigger later...
    
    if(Trigger.isBefore && Trigger.isInsert){
        
        for(Lead w : Trigger.new){
            if(String.isBlank(w.Industry)){
                w.Industry = 'Education';
            }
            
        }
        
    }
    
    
    
    
    if(Trigger.isBefore && Trigger.isUpdate){

    for(Lead w : Trigger.new){
            if(String.isBlank(w.Industry)){
                w.Industry = 'Banking';
            }
            
        }        
        
    }
}


/*
if(Trigger.isBefore){

        if(Trigger.isInsert){
        .......
        
        }
        
        if(Trigger.isUpdate){
        .........
        
        }

} 
 */