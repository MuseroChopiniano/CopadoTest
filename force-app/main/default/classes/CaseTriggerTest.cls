@isTest
public with sharing class CaseTriggerTest {
    
    @isTest
    public static void createCase(){
        Case aCase = new Case(subject='mySubject');
        Test.startTest();
        insert aCase;
        Test.stopTest();
        Case retrievedCase = [SELECT Id FROM Case LIMIT 1];
        System.assertEquals(aCase.id, retrievedCase.id,'the inserted case is not the same that was retrieved');
    }
}
