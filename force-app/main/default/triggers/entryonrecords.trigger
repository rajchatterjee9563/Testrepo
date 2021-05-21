trigger entryonrecords on Campaign (before insert,after insert,after delete,before delete) {
    for(campaign c : Trigger.new){
       system.debug('campaign name = manager'); 
    }                     
}