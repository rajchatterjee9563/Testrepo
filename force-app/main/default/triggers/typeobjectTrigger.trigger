trigger typeobjectTrigger on Prospect__c (after insert) 
{
    Id proid ;
    string Newtype , nameofpro ;
    for(prospect__c pro : Trigger.New)
    {
        proid = pro.Id ;
        Newtype = pro.Type__c ;
        nameofpro = pro.Name ;
        system.debug('proid....'+proid);
        system.debug('Newtype....'+Newtype);
        system.debug('Trigger.New....'+Trigger.New);
        system.debug('nameofpro....'+nameofpro);
    }
   List<prospect__c> prolist = New List <prospect__c>();
    prolist = [select name,id,Type__c, (select name,id,Type__C from Prospects__r) from prospect__c where id = :proid];
    List<prospect__c> proslistToUpdate = New List <prospect__c>();
    system.debug('prolist===='+prolist);
    for(prospect__c pros : prolist)
    {
       system.debug('pros....'+pros);
        for(prospect__c pr : pros.Prospects__r)
        {
           system.debug('pr.....'+pr);
             pr.Type__c = Newtype ;
            proslistToUpdate.add(pr);
        }
       
    }
    update proslistToUpdate ;
}