/**
 * @description Test Class for reCaptcha functionality
 * @author Mike Chale
 **/
@isTest
private class RecaptchaTest {
    @isTest
    static void testCaptchaEnabled() {
        Boolean result =  SiteUtilities.isReCaptchaEnabled('Self_Registration_Logging');
        if(result) {
            System.assertEquals(true, result, 'Retrieved custom settings - reCaptcha enabled');
        }
        else {
            System.assertEquals(false, result, 'Retrieved custom settings - reCaptcha disabled');
        }
    }

    @isTest
    static void testCaptchaScoreSet() {
        Decimal result =  SiteUtilities.getReCaptchaScore('Self_Registration_Logging');
        if(result != null) {
            Assert.isNotNull(result, 'Retrieved custom settings - reCaptcha score set');
        }
        else {
            Assert.isNull(result, 'Retrieved custom settings - reCaptcha score not set');
        }
    }

    @isTest
    static void testCaptchaSecretSet() {
        String result =  SiteUtilities.getReCaptchaSecretKey('Self_Registration_Logging');
        if(result != null) {
            Assert.isNotNull(result, 'Retrieved custom settings - reCaptcha secret set');
        }
        else {
            Assert.isNull(result, 'Retrieved custom settings - reCaptcha secret not set');
        }
    }

    @isTest
    static void testCaptchaSiteKeySet() {
        String result =  SiteUtilities.getReCaptchaSiteKey('Self_Registration_Logging');
        if(result != null) {
            Assert.isNotNull(result, 'Retrieved custom settings - reCaptcha site key set');
        }
        else {
            Assert.isNull(result, 'Retrieved custom settings - reCaptcha site key not set');
        }
    }

    @isTest
    static void verifyRecaptchaResponse(){
        Test.setMock(HttpCalloutMock.class, new RecaptchaMock());
        Boolean isValid = SiteUtilities.validateRecaptcha('Self_Registration_Logging', 'sampleRecaptchaResponse');

        Assert.isTrue(isValid, 'reCaptcha validated');
    }
}