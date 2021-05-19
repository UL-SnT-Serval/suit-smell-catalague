# Catalogue of System User Interactive Tests (SUIT) smells


## Army of clones

### Descriptions

Different tests perform and implement similar actions, leading to duplicated pieces of test code.

### Impact

- **Comprehension**: Test sequences which are similar but not identical are not easy to distinguish. It is not easy to grasp the intention of the test in comparison with its clone.

- **Maintenance**: The effort to maintain duplicated parts of tests increases. Furthermore, it is difficult to determine where maintenance has to be performed.

## Complicated Setup Scenarios

### Description

The test performs actions to set the system under test in a valid state for the focus of the test. These actions should be performed in the setup.

### Impact

- **Comprehension**: The more actions the test needs to perform in order to set itself up and clean after itself, the more the intent of the test is hidden.

- **Maintenance**: The test tends to be bigger, therefore, more complex and harder to maintain.

- **Execution**: The more actions against the system under test a test contains, the more chances it has to experience a failure, related or not to what is the real intent of the test.

## Conditional Assertions

### Descriptions

The test verifies different properties depending on the environment when the environment state may change from one execution to the next.

### Impact

- **Comprehension**: With more complex logic in the assertions, it becomes harder to capture their meaning.

- **Execution**: More complex code might introduce bugs in the test code.


## Conspiracy Of Silence

### Description

An assertion in a test is failing with no indication as to why.

### Impact

- **Execution**: The goal of addressing this issue is to ease reproducing the problem found. With no signal on what when wrong, debugging becomes more difficult. 

## Data Creep

### Description

Test data is stored in ways that are hard to access.

### Impact

- **Maintenance**: When the data needs to evolve extra work and potential mistake might arise.

## Dependencies between tests

### Description

Tests have dependencies between them, be it within the test themselves or their fixtures.

### Impact

- **Execution**: If one of the previous test fails, the current test may fail without any valid reason.

## Directly Executing UI Scripts

### Description

Since technologies such as web technologies allow to directly exercise the system under test using scripts such as Javascript, it can be tempting to completely bypass the user interface and just run such scripts.

### Impact

- **Maintenance**: The test mimic the logic of the user interface in the scripts, therefore, these scripts need to be maintained to mimic the behavior of the system under test.

## Duplicate Check

### Description

Different test in the test suite perform the same exact check against the system under test.

### Impact

- **Execution**: The total execution time of the test suite is increased since it is checking multiple times the same things without any added value.

## Eager Test

### Description

The test exercises several non-related features of the system under test.

### Impact

- **Comprehension**: It is hard for future reader to understand the test. Therefore, it makes it more difficult to use as documentation.

- **Maintenance**: It makes tests more dependent on each other and harder to maintain.

## Hardcoded Environment

### Description

The test contains hardcoded references to the environment when the same requirement must be run against different test environments instead of having an environment-agnostic test.

### Impact

- **Maintenance**: Updating the configuration requires modifying multiple locations in different tests.


## Hiding Test Data

### Description

The data are not directly visible and understandable in the test but are hidden in the fixture code.

### Impact

- **Comprehension**: The data is completely obscure to the future reader making the intent of the test difficult to understand.

## Implementation Dependent

### Description

The test is dependent on the implementation details and data structures present in the system under test.

### Impact

- **Maintenance**: When porting the system under test to a new technology or architecture if the tests depend too heavily on the previous technological decisions, the migration of the test might require heavy modifications.

## Inconsistent Hierarchy

### Description

The test component hierarchy (class hierarchy, keyword hierarchy, macro hierarchy, etc.) is inconsistent with the structure of the GUI. (e.g. not using the page object pattern in web testing)

### Impact

- **Comprehension**: It makes it harder for the future reader to understand how the test is related to the system under test.

- **Maintenance**: A single change in one of the state of the system under test might generate changes in multiple locations in the test code (i.e. shotgun surgery). 

## Inconsistent Wording

### Description

The domain concept are not used in a consistent way across tests by either using several names for the same concept or employing the same name to refer to different concept.

### Impact

- **Comprehension**: It is difficult for the future reader to detect similarities between tests.

## Lack of Encapsulation

### Description

The implementation details of a test are not properly hidden in the implementation layer and start appearing in its acceptance criteria.

### Impact

- **Comprehension**: The acceptance criteria is meant to convey intention over implementation. Focusing on implementation in the acceptance criteria makes the intent harder to grasp.

## Lack Of Early Feedback

### Description

Regression suites grow too big to be accommodated in the automation pipeline where execution would last for hours.

### Impact

- **Execution**: The tests are so big that they cannot be executed in a timely fashion to be integrated in automated continuous integration to be executed after each commit, thus, preventing the fast feedback seeked by test automation. 

## Lifeless

### Description

The test is missing the lifecycle steps of the business objects (e.g. CRUD) and such basic operations are scattered throughout the test suite. 

### Impact 

- **Maintenance**: When a business object is modified, lots of test have to be updated as a result of the change.

## Long Test Steps

### Description

One or many test steps are very long, performing a lot of actions on the system under test.


### Impact

- **Comprehension**: The intention of the step is difficult to grasp.

- **Execution**:  With each action on the system under test, there is a chance of something going wrong. The higher this number, the more fragile the test becomes.

## Middle Man

### Description

A test component (keyword, macro, function) delegates all its tasks to another test component.

### Impact

- **Comprehension**: The levels of indirection make the test harder to follow by future readers.

## Missing Assertion

### Description

The test lacks any explicit assertions.

### Impact

- **Comprehension**: Future readers are left in the potentially frustrating position of puzzling over the intention of the test.


## Narcissistic

### Description

The test uses the first person pronoun ***I*** to refer to its actors and does not uniquely qualify those actors.

### Impact

- **Comprehension**: The test is harder to read because it is not clear who ***I*** is and what are the roles that ***I*** has.

## Noisy Logging

### Description

The test logs the state of the fixtures.

### Impact

- **Execution**: There is too much noise in the output from the tests, making its analysis more cumbersome.

## Obscure Test

### Description

The test behavior is difficult to understand because the test does not clearly state what it is verifying. Typical symptoms are hardcoded values, high cyclomatic complexity and/or function or procedure calls with high number of parameters.

### Impact

- **Comprehension**: Future reader might not understand the meaning of a hardcoded value, hence, missing the intention of the test. As with a high cyclomatic complexity it becomes hard for the future reader to follow the execution flow of the test and grasp what it is doing.

- **Maintenance**: It is difficult to determine where to perform changes if hardcoded values are scattered all over the test code. Furthermore, test with high cyclomatic complexity might have side effect overseen during maintenance which might lead to future problems.

## On the Fly

### Description

The test calculates an expected results during its execution instead of relying on pre-computed values.

### Impact

- **Comprehension**: By embedding the business rule in the assertion, the code for the automated test can become as complicated as the system under test.

## Over-Checking

### Description

The test performs some assertions that are not relevant for its scope.

### Impact

- **Comprehension**: It becomes harder to understand what is the main intent of the test. Many assertions suggests the test is checking many different properties.

## Pointless Scenario Descriptions

### Description

The description of the step does not give any extra information about its intent while remaining long.

### Impact

- **Comprehension**: The intention of the step contains a lot of noise making it harder to read.

## Sensitive Locators

### Description

The test uses element identification selectors that have long chains to identify an element in the user interface. e.g. complex x-pass or CSS selector for web application.

### Impact

- **Maintenance**: This leads to fragile tests, as any change in that chain from the user interface representation will break the tests.

## Sneaky Checking

### Description

The test hides its assertions in actions that are at the wrong level of details.

### Impact

The future reader is not able to understand what is being tested by just looking at the main steps of the acceptance criteria without a need to inspect how low level details are implemented.

## Stinky Synchronization

### Description

The test fails to use proper synchronization points with the system under test.

### Impact

- **Execution**: The test becomes oversensitive to the response time, leading to flaky tests, or very slow tests when choosing very conservative wait points.

## Test Data Loss

### Description

Fixtures used by the test are always the same and require non trivial computation. When not saved, these values need to be computed at each test execution.

### Impact

- **Execution**: The test suite spends a lot of time generating the same data again and again increasing its total execution time.

## Testing Data Not Code

### Description

The data the test rely on are dependent on the environment they lie in and need to be generated for each environment at every release.

### Impact

- **Maintenance**: For each iteration/release, test data need to be replaced or cooked to run the suite, otherwise the execution results will raise false alarm.

## Unnecessary Navigation

### Description 

The test performs actions that are not directly connected to the focus of the test.

### Impact

- **Execution**: Tests can take a considerable amount of time to execute.

## Unrealistic Data

### Description

The test is written using trivial data that are not representative of the production data.

### Impact

- **Execution**: The test will pass on trivial test data but the application will fail on the real data that are thrown at it.

## Unsecured Test Data

### Description

The test is using real user data and reads private information which might be violating certain laws.

### Impact

- **Execution**: During execution, the test exposes data to actors that should otherwise not be able to access sensitive data.

## Unsuitable Naming

### Description

The name of the test does not capture the essence of what the test is doing.

### Impact

- **Comprehension**: It is hard to understand what the test is doing by reading its name. It leaves future readers no choice but to go through all the steps of the test.