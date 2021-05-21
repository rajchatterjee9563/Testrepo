trigger leadexample on Lead (before insert) 
{
     for(lead Id :Trigger.new)
    {
       if(id.leadsource == 'web')
      {
        id.rating = 'cold' ;
      }
      else{
            id.rating = 'hot' ;
      }
    }
}