trigger stagerule on Opportunity (before insert) {
    for(opportunity opp :Trigger.new){
      system.debug('new opportunity'+opp.StageName);  
        
    }
}