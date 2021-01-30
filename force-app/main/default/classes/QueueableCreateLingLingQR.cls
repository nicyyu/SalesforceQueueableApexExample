public class QueueableCreateLingLingQR implements Queueable {
    private String idReceived;

    public QueueableCreateLingLingQR(List<String> IdInput) {
        System.debug('IdInput: ' + IdInput[0]);
        this.idReceived = IdInput[0];
    }

    public void execute(QueueableContext context) {
        System.debug('context: ' + context);
        System.debug('idReceived: ' + idReceived);
        CreateLingLingQR(idReceived);
    }

    public void CreateLingLingQR(String sessionId) {
        System.debug('QueueableCreateLingLingQR method started. ' + 'id: ' + sessionId);
        Account a = new Account(Name='Acme',Phone='(415) 555-1212');
        insert a;
    }

}