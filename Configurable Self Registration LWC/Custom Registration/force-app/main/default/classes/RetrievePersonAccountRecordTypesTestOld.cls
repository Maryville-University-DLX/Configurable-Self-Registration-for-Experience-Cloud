/**
 * DEPRECATED CLASS
 * @description - NO LONGER USED
 * @author Jamie Lowe - jamielowe1990/jlowesfdc
**/

@isTest
private class RetrievePersonAccountRecordTypesTestOld {
   
    @isTest
    private static void retrievePersonAccountRecordTypesValues() {
       RetrievePersonAccountRecordTypes rts = new RetrievePersonAccountRecordTypes();
       VisualEditor.DynamicPickListRows rows = rts.getValues(); 
       System.assert(true, 'Success: Retrieved picklist values');
    }

    @isTest
    private static void retrievePersonAccountRecordTypesDefaultValue() {
       RetrievePersonAccountRecordTypes rts = new RetrievePersonAccountRecordTypes();
       VisualEditor.DataRow row = rts.getDefaultValue();
       System.assertEquals(null, row,'Success: No default value retrieved');
    }

    @isTest
    private static void isValidTest(){
        RetrievePersonAccountRecordTypes rts = new RetrievePersonAccountRecordTypes();
        Boolean valid = rts.isValid(true);
        System.assertEquals(valid, true, 'Success: isValid'); 
    }
}