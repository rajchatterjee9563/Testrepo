trigger toavoiadduplicatenames on Account (before insert) {

for(Account a : Trigger.new){

for(Account a1 :[select id,name from account]){

if(a.name == a1.name){

a.name.adderror('This is a duplicate name');
}

}

}

}