public class QueueableCreateLingLingQR implements Queueable {
    public static String idReceived = '';

    public void execute(QueueableContext context) {
        System.debug('idReceived: ' + idReceived);
        Account a = new Account(Name='Acme12',Phone='(415) 555-1212');
        insert a;
        CreateLingLingQR(idReceived);
    }

    public void CreateLingLingQR(String sessionId) {
        System.debug('QueueableCreateLingLingQR method started. ' + 'id: ' + sessionId);
        Account a = new Account(Name='Acme',Phone='(415) 555-1212');
        insert a;
    }

    public QueueableCreateLingLingQR(String IdInput) {
        System.debug('IdInput: ' + IdInput);
        if ( IdInput == null ) {
            idReceived = '';
        }
        if ( IdInput != null ){
            idReceived = IdInput;
        }
    }
}
