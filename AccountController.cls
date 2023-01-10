public with sharing class AccountController {
    @AuraEnabled( cacheable = true )  
    public static List< Account > fetchAccounts(  ) {  
        
       
        return [ 
           
            SELECT Id, Name, Industry,CreatedDate
            FROM Account order By CreatedDate desc
             LIMIT 10 
        ];  
            
    }  
}