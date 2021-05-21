trigger relationtrigger on Contact (after insert,after update,after delete) 
{
   Threeobjectsrelationclss.relationShipMethod(trigger.new);
}