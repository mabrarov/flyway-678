flyway-678
==========

repro project 4 https://github.com/flyway/flyway/issues/678


1) define properties for database in flyway-settings.xml
2) run following mvn clean compile flyway:clean flyway:migrate -s flyway-settings.xml
3) it should fail with following message:

[ERROR] Failed to execute goal com.googlecode.flyway:flyway-maven-plugin:2.3.1:migrate (default-cli) on project flyway: com.googlecode.flyway.core.command.FlywaySqlScriptException: Error executing statement at line 1: CREATE TRIGGER CUSTOMER_INSERT ON CUSTOMER AFTER
[ERROR] INSERT AS BEGIN
[ERROR] UPDATE
[ERROR] CUSTOMER set creaon_date = {ts '3099-01-01 00:00:00'} FROM CUSTOMER c inner join inserted i on c.id=i.id
[ERROR] END
[ERROR] 
[ERROR] GO
[ERROR] CREATE TRIGGER CUSTOMER_UPDATE ON CUSTOMER AFTER
[ERROR] UPDATE AS BEGIN
[ERROR] UPDATE
[ERROR] CUSTOMER set creaon_date = {ts '3099-01-01 00:00:00'} FROM CUSTOMER c inner join inserted i on c.id=i.id
[ERROR] END: Incorrect syntax near 'GO'.
[ERROR] -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
