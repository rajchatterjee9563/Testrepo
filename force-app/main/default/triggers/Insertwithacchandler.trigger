trigger Insertwithacchandler on Account (before insert) 
{
   Accountwithcasehandler.handlerMethod(trigger.new);
}