trigger countfreinds on Contact (before insert) {
  for(contact c : Trigger.new){
  system.debug('David has a new freind!');
  system.debug('Hi' + c.Firstname + ' ' + c.Lastname + '+');
}
List<contact> total = [Select ID from contact];
system.debug('David has' + total.size() + ' Freinds total. ');
}