flyway-678
==========

repro project 4 https://github.com/flyway/flyway/issues/678 and https://github.com/flyway/flyway/issues/1216.


1. define properties for database in flyway-settings.xml
2. run following `mvn clean compile flyway:clean flyway:migrate -s flyway-settings.xml`
3. it should fail with following message:

```
[ERROR] Failed to execute goal org.flywaydb:flyway-maven-plugin:3.2.1:migrate (default-cli) on project flyway: org.flywaydb.core.internal.dbsupport.FlywaySqlScriptException:
[ERROR] Migration V3__alter trigger.sql failed
[ERROR] --------------------------------------
[ERROR] SQL State  : 42000
[ERROR] Error Code : 102
[ERROR] Message    : Incorrect syntax near 'GO'.
[ERROR] Location   : db/migration/V3__alter trigger.sql (C:\WS\UPBillPay\flyway-678\target\classes\db\migration\V3__alter trigger.sql)
[ERROR] Line       : 1
[ERROR] Statement  : ALTER TRIGGER CUSTOMER_INSERT ON CUSTOMER AFTER
[ERROR] INSERT AS
[ERROR] BEGIN
[ERROR] SELECT TOP 1 1 FROM CUSTOMER WHERE [name] LIKE'%test';
[ERROR] END
[ERROR] GO
[ERROR] -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```