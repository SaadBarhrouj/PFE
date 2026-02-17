public class CodeViolations {

    public static void badMethod() {
        String unusedVar = 'this is unused';
        Id hardcodedId = '001000000000000AAA'; // Hardcoded ID

        try {
            Integer result = 1 / 0;
        } catch (Exception e) {
            // Empty catch block
        }

        System.debug('This is a debug statement'); // Debug statement

        // Method with same name as class? No, but maybe unused method
    }

    public static void unusedMethod() {
        // This method is unused
    }
}