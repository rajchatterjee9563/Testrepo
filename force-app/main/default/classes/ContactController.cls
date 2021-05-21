public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<contact> findContactbyAccountId (string accountId){
        return[
            select Id,Firstname,Lastname,Email,phone
            From contact
            Where accountId = : accountId

            Limit 10 ];
    }
}