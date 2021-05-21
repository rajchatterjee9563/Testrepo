trigger Inserhandlertrigger on Account (before insert) 
{
  Acchandlerclass.handlerMethod(trigger.new);
}