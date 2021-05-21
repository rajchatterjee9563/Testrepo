trigger triggerwithcase on Case (after insert,before insert,after delete,before delete) 
{
   casetriggerhandler.insertcaseundermasteraccount(Trigger.new , Trigger.isinsert , trigger.isbefore);
}