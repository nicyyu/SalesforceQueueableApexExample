public class QueueableCreateLingLingQR implements Queueable {
    public static String idReceived = '';
    
    public void execute(QueueableContext context) {
        System.debug('idReceived: ' + idReceived);
        CreateLingLingQR(idReceived);
    }

    public void CreateLingLingQR(String sessionId) {
        System.debug('QueueableCreateLingLingQR method started. ' + 'id: ' + sessionId);
    }

    public QueueableCreateLingLingQR(String IdInput) {
        if ( IdInput == null ) {
            idReceived = '';
        }
        if ( IdInput != null ){
            idReceived = sessionIdInput;
        }
    }
}
