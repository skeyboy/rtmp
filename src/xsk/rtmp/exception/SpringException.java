package xsk.rtmp.exception;

public class SpringException extends RuntimeException {
    private String exceptionMsg;


    public SpringException(String given_name_is_too_short) {
        this.exceptionMsg = given_name_is_too_short;
    }
}
