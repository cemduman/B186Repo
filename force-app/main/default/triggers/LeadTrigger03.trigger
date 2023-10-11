trigger LeadTrigger03 on Lead (before update) {
    //Example 4: When a lead record is being updated, 
    //and if industry field is blank or Technology or Finance;
    //Rating should be changed from Cold to Hot

    for(Lead w : Trigger.new){
       
        if((String.isBlank(w.Industry) || w.Industry =='Technology' || w.Industry == 'Finance') && w.Rating=='Cold') {

            
            w.Rating='Hot';
            
        }
        
    }
    
}