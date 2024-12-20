@isTest
public class RecaptchaMock implements HttpCalloutMock {
    public HTTPResponse respond(HTTPRequest req) {
        HTTPResponse response = new HTTPResponse();
        response.setBody('{"success":true,"score":1.0}');
        response.setStatusCode(200);
        return response;
    }
}