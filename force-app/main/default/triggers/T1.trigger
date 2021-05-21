trigger T1 on Opportunity (before insert) {
   WritelastOpportuntyClass.LastMethod(Trigger.new);
}