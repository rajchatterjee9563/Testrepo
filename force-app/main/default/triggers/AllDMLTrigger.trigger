trigger AllDMLTrigger on Case (after insert,after update,after delete,before update) 
{
    
  if(Trigger.IsInsert)
  {
      List<Lead> leadoflist = New List<Lead>();
      for(case c : Trigger.New)
      {
          system.debug('inside inster loop...');
          Lead L = New Lead();
          L.Lastname = c.subject ;
          L.company = c.subject ;
          leadoflist.add(L) ;
      }
      system.debug('leadoflist Insert...'+leadoflist);
      insert leadoflist ;
  }  
    if(Trigger.isbefore && Trigger.isupdate)
    {
        system.debug('Trigger.new....'+Trigger.new);
        system.debug('Trigger.old....'+Trigger.old);
        List<lead> leadlist = New List<Lead>();
        List<string> sublist = New List<string>();
        for(case c : Trigger.old)
        {
            sublist.add(c.subject) ;
        }
         system.debug('sublist....'+sublist);
        leadlist = [ select name,id,Lastname from lead where lastname in : sublist];
        system.debug('sublist...'+sublist);
        
        for(Case c1 : Trigger.new)
       {
            for(Lead L : leadlist)
            {
                for(case c2 : Trigger.old)
                {
                    if(L.Lastname == c2.subject)
                    {
                        l.LastName = c1.subject ;
                        leadlist.add(L) ;
                    }
                }
            }
       }
        if(!leadlist.isempty())
        {
            map<id, Lead> leadMap = new map<id, Lead>();
            
            for(Lead li : leadlist)
            {
                leadMap.put(li.id,li);                        
                
                system.debug('leadmap...'+leadmap);
            }
            update leadMap.values();
        }
    }
}