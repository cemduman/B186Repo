trigger LeadTrigger14 on Lead (after insert, after update) {

    //Example 14: When a lead record is updated or inserted,
    //Create a task only when industry is 'Education'
    
    switch on Trigger.OperationType{
        when AFTER_UPDATE, AFTER_INSERT{
            
           LeadTrigger14Handler.afterInsertAndUpdateTrigger(Trigger.new);
        }
    }
    
}


//We can use "Handler Class" for triggers to create our logic inside...
//"Handler Class" is an Apex Class helping trigger and connected with trigger
//By the help of "Handler Class", we will have readable and simple codes in Trigger
//and logic will be in Apex Class