trigger updatetrigger on Opportunity (before update,after update) 
{
  if(trigger.isafter && trigger.isupdate)
  {
  OldAndNewclass.TriggerMethod(Trigger.new ,Trigger.old) ;
  }
  
  
  
   string  OldStageName , NewStageName ; 
   List<opportunity> opplist = New list<opportunity>();
    system.debug('Trigger.new...'+Trigger.new);
    system.debug('Trigger.old...'+Trigger.old);
   for(opportunity opp : Trigger.new)
   {
     NewStageName = opp.StageName ;
       system.debug('opp.name...'+opp.name);    
     system.debug('NewstageName.....'+NewstageName);
   }
    for(opportunity op : Trigger.old)
    {
        system.debug('op.name....'+op.name);
    }
}