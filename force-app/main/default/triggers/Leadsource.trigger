trigger Leadsource on Lead (before insert) 
{
  for(Lead l : Trigger.new)
  {
      if(l.Leadsource == 'web')
      {
          l.Rating = 'cold';
      }
      else
      {
          l.Rating = 'hot';
      }
  }
}