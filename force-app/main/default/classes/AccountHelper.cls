public class AccountHelper {
    public static List<Account> getAccountsByIndustry(String industry) {
        return [SELECT Id, Name, Phone, AnnualRevenue 
                FROM Account 
                WHERE Industry = :industry
                LIMIT 50];
    }
    
    public static void updateAccountRevenue(Id accountId, Decimal newRevenue) {
        Account acc = [SELECT Id, AnnualRevenue FROM Account WHERE Id = :accountId LIMIT 1];
        acc.AnnualRevenue = newRevenue;
        update acc;
    }
    
    public static Integer countAccounts() {
        return [SELECT COUNT() FROM Account];
    }
}
