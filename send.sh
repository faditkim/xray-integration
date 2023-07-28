# Basic Usage
# HTTP Request Method   :   POST
# HTTP Request URL      :   http://yourJiraServerURL/rest/raven/1.0/import/execution/robot
# Query Parameters      :   
#   * projectKey (key of the project where the Test Execution (if the testExecKey parameter wasn't provided) and the tests (if they aren't created yet) are going to be created)
#   * testExecKey (key of the Test Execution.)
#   * testPlanKey (key of the Test Plan; if you specify the Test Plan, the Tests will be added automatically to the Test Plan if they're not part of it)
#   * testEnvironments (a string containing a list of test environments separated by ";")
#   * revision (source code and documentation version used in the test execution)
#   * fixVersion (the Fix Version associated with the test execution (it supports only one value))
#
# Http Reqeust Headers  :   Content-Type: multipart/form-data
# Authorization         :   via Basic Auth(Cloud Env.) or *username/password(Server & Datacenter)
# file                  :   
#   * Absolute path - /<yourRepoPath>/<robotFrameworkOutputPath>/output.xml
#   * Relative path - ./<robotFrameworkOutputPath>/output.xml

curl -H "Content-Type: multipart/form-data" -u tkim:1234567890 -F "file=@./results/output.xml" http://localhost:8080/rest/raven/1.0/import/execution/robot?projectKey=PROB


# References
## Xray REST API        :   https://docs.getxray.app/display/XRAY/Import+Execution+Results+-+REST 
## CURL POST Request    :   https://reqbin.com/req/c-dot4w5a2/curl-post-file