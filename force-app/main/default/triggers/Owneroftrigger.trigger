trigger Owneroftrigger on Lead (before insert) 
{
   ownerchangehandler.ownerHandlerMethod(Trigger.new);
}