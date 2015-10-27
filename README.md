#TeamProjectManagmentTool:

Hackaton project 

###Description:
To make organizing and starting a project with a team or by yourself fast and simple.


###Start Goals:
  - ☐ Make a fast way to get your project organized.
  - ☐ Make it so all team members have a clear goal and a path to follow.
  - ☐ Makes forms for users to enter goals, description, time line, team member with there roles.
  - ☐ email the readme to all the users
  - ☐ create documentation in a nice way so that the team can get started as soon as possible.


###End Goals:
  - ☐ Different options on how they want the readme sent. In a .todo file, sent to there gist, and/or everyones email email.
  - ☐ Github API log in through Github and to be able to write to a gist or to a new github repo.
 
###Very end Goals:
  - ☐ Be able to create new rails app from the info given add make a new github repo.
  - ☐ Ability to add the other teammates as contributors to the github repo.

###Development Plan / Timeline:
  - ☐ Set up rails application with gems.
  - ☐ Set up the ProjectPlan model with required fields. Use a non Active Record model(unless i want the user to be able to able to go back and edit it). fields: project_name members description:text start_goals end_goals plan:text roles_for_members notes challenges (other things latter: what format they would like it sent(email gist github .todo))
  - ☐ Set up a ProjectPlan controller to set up a new project.
  - ☐ Set up the views to match the controller and make simple forms. Challenge #1: Need to have a way to expand forums with a click to add more users to a table or things like goals.
  - ☐ Set up a mailer so that the completed project plan will go to the users listed. The Project plan will go to all the emails giving (all the team members if email is giving).
  - ☐ If the user login with there Github have an option to make a gist file with project plan. Challenge #2: The Ability to log in with a github account. Challenge #3: Learn how to be able to create and write to a gist. 
  - ☐ Be able to download the file as some type of .txt or as a .todo file. Ether from the site or as an attachment to the email. Challenge #4: Learn how to do that...
  

###Team Members and there Roles:

  - ☐ Quintin Adam / Project Leader

###Tasks for each user:

  Quintin Adam:
  - ☐ Get it done.

  User #2:

###Notes:
   Changed my mind a bit. Email the thing could still be an option but I would like the app to be assessable through logging in from a github account and have a user model. that user can belong to many projects. The project will use Javascript to make it so you can add new tasks to the project on the same page, 

###Challenges:
  - ☐ #1 Get forms to be able to add fileds like more team members or more tasks/ goals.
    I think the best solution for this would be to have the main model with all the more static content. Like Title description and notes. Then have diffrent model useing nested attributes. Example: project has one to many relationship to the team members. and each team member has many roles.
  - ☐ #2 Use a gem to let the login through there github. 
  - ☐ #3 Using the githubAPI? have it so I can create and write to the users gist in a markdown file.
  - ☐ #4 Learn how to write to a file and make it so it can be downloaded. Also 
  
