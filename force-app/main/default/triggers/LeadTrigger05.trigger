trigger LeadTrigger05 on Lead (before delete) {
    //Example 6: If industry is Education. do not allow any user to delete the record..
    
    //in best practices: we check trigger event and operations first...
    if (Trigger.isBefore && Trigger.isDelete){
    
    for(Lead w: Trigger.old){
        if(w.Industry == 'Education'){
            w.addError('You can not delete the record whenindustry is education');
        }
        }
}
}