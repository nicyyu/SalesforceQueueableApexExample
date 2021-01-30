public class InvocableQueueableCreateLingLingQR {
    public static Class_Session__c classSession = new Class_Session__c();
    @InvocableMethod
    public static void InvocableQueueableCreateLingLingQR(List<Class_Session__c> ClassSessionList) {
        classSession = ClassSessionList[0];
        System.debug('classSession Id: ' + classSession.Id);
        System.debug('classSession Name: ' + classSession.Name);
        List<String> l = new List<String>{'a', 'b', 'c'};
        ID jobID = System.enqueueJob(new QueueableCreateLingLingQR(l));
        System.debug('jobID: ' + jobID);
        AsyncApexJob jobInfo = [SELECT Status, NumberOfErrors FROM AsyncApexJob WHERE Id=:jobID];
        System.debug('jobInfo: ' + jobInfo);
    }
}