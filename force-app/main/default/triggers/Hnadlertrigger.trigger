trigger Hnadlertrigger on Account ( after update) 
{
  
   AccountHandlerclass.HandlerMethod(Trigger.new , Trigger.old, Trigger.isafter , trigger.isupdate) ;
   
}