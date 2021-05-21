trigger Accwithhandler on Account (after update) 
{
  if(trigger.isafter && trigger.isupdate)
  {
      accountwithhandlerclass.handlerMethod(trigger.old);
  }
}