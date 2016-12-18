## SELF-ASSESSMENT


1. Jenkins URL and username and password. 
   - Url: http://82.221.49.114:8080


2. Game URL (AWS)
   - Url: http://54.174.116.245

   NOTE : Jenkins builds with schedule every hour because i could not get it to build automaticly on git push, but you can sign into jenkins and build manually to get the game server to run, it runs after the deploy project is built.


## Scripts

Outline what script files you created and the purpose of each file. Each file should be commented. This could be

  - ./productionBuild.sh is my built script.
  - ./deployBuild.sh is my deploy script.
  - /ADVANIA-login.sh is my lazy login to qstack server script.
  - /AWS-login.sh is my lazy login to AWS game server script.
  - ./runserver.sh is a modified script for database migration. 
  
  - /provision/compose-and-run.sh is a script intended for AWS server but i choose to include this in a one script, deployBuild.sh


## Testing & logic

Outline what tests you created.

- UnitTests, server logic TDD (Git commit log)

- API Acceptance test - fluent API

- Load test loop

- UI TDD

- Is the game playable?


## Data migration

Did you create a data migration.

- Migration up and down
  I created data migration script in package.json : migratedb-add-event-col to create a migration for the database. 



## Jenkins

Do you have the following Jobs and what happens in each Job:

- Commit Stage
  
  1. I install all the importand dependencies with 'npm install' both in root and client directory.
  2. npm run build - clean and build the project 
  3. create .env file for GIT TAG 
  4. copy files into build directory needed for further use.
  5. navigate into build directory 
  6. create a docker image 
  7. push the newly created image to dockerhub

- Acceptance Stage
  
- Capacity Stage

- Other


Did you use any of the following features in Jenkins?

- Schedule or commit hooks
  I am building my project every hour with scheduled build.

- Test reports
  I am creating xml reports with jasmine-reporters it creates them in a folder at root namde testreports.

