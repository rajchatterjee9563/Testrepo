trigger Tshirts on Account (before insert) {
   system.debug('printing trigger.new'+ trigger.new);
   for(Account acc : Trigger.new){
     case shirtcase    = new case();
   shirtcase.subject ='Send them a free T-shirt!';
     shirtcase.priority ='ultra high';
shirtcase.AccountID = acc.id;
  insert shirtcase;
 }
}