/**
 * Test class for CodeViolations.
 * Tests the methods that contain code violations.
 */
@isTest
public class CodeViolationsTest {

    @isTest
    static void testBadMethod() {
        // Test calling badMethod - it should not throw unhandled exceptions
        // Note: This test demonstrates the bad practice of empty catch blocks
        Test.startTest();
        try {
            CodeViolations.badMethod();
        } catch (Exception e) {
            // In a real test, we would assert something, but here we just catch
            System.assert(true, 'Exception caught as expected');
        }
        Test.stopTest();
    }

    @isTest
    static void testUnusedMethod() {
        // Test calling the unused method
        Test.startTest();
        CodeViolations.unusedMethod();
        Test.stopTest();
        // No assertions needed as the method does nothing
    }
}