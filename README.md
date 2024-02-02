### SCENARIO
---
Welcome to SSL.com

This week has been crazy and we need you to help us knock out a simple application to clear our backlog and make one of our new customers happy. Are you up for the challenge?

We are in major crisis mode and only have 4 hours to deliver a POC (Proof of Concept) application to manage users, teams and roles. Keep in mind this is a POC and we want you to knock out as much as you can while ensuring it is functional and is presentable. Security and Functionality should be observed throughout the application.

### IMPORTANT NOTES
---
We are trying to understand what makes you tick, where you might excel and where you might struggle. This is only a single point to evaluating our candidates and does not by itself make or break your engagement with the our team. Do the best you can and show us what you got! Please spend no more than 4 hours from start to finish on this. We want to see what you can get done in that time. Environment setup (installing ruby, postgres, rails) should not be accounted for in your 4 hours. The 4 hours should start at the inception of the `rails new ...` command. We are basing this on the honor system but please do keep a log of what time you start and what time you end. Please include this in your PR in the description.

Unless specified, please feel free to use any gem, engines, methods, libraries, information sources and development tools that you see fit in order to complete this project. You are free to showcase how you can manage development, feature and timelines to get as much done as possible with the best possible results. Please keep in mind we are a security company and secure, scalable applications are expected at all times.

When you are done, please create a Github Repo with a single PR committing your new project.

If you finish early You can look into the Bonus Points section for additional tasks we would like you to complete if possible. Good luck!

### BEST PRACTICES
---
So in order to get started lets cover a couple ground rules that we follow here at SSL.com in terms of development processes, procedures and standards.

- You must use Ruby 3.2 and Rails 7.1.3
- You must use TailwindCSS for the CSS elements.
- You must use HAML instead of ERB for your views.
- You must use Stimulus or Vanilla JS for any javascript needs.
- You must use RSpec for testing.
- Your code must pass the StandardRB formatting requirements.
	- You can install and run the `standardrb` gem

### GETTING STARTED
---
Great! Lets get started. Below you will find an example of a daily ticket you might work on here at SSL.com. While it is not in JIRA, it has all of the details that our typical ticket would have. Please use the information below to complete the task.

### SAMPLE TICKET
---
Ticket Type: `Story`
Ticket ID:  `SDT-100`
Ticket Summary: `Create a rails 7 application that allows an admin user to login and manage users, teams and roles via a UI.`

Description:

As an admin user,
I would like to have a system that I can login into and create & manage users, teams and roles from a UI,
So that I can easily maintain our list of users and their perspective roles for the application.

Acceptance Criteria:

- Must adhere to our Best Practices listed above.
- Must be able to register an account on the site.
	- Must enforce the user to enter the following information:
		- First Name
		- Last Name
		- Username (only alpha-numeric characters)
		- Valid Email Address
		- Password
		- Password Verification
- Must be able to reset password via email and a secure token.
- Must be able to login to the site via email address or username.
- Must be redirected to a Dashboard page placeholder upon login.
- must be able to setup a specific redirect variable in the URL. The user must be directed to this URL instead of the dashboard if set. Once directed it must be cleared for future attempts.
- Must ensure that email address is unique.
- Must ensure that username is unique.
- Must be able to select a team from a dropdown in the top nav bar.
	- Must only present teams you are a member or owner of.
	- Must store Active Team so that additional resources can be built off of this.
	- Must have current_team helper available anywhere current_user is available.
- Must be able to manage Users
	- Must provide ability to have an avatar.
	- Must have a first name.
	- Must have a last name.
	- Must be able to edit own profile (first name, last name, email address & username)
	- As an admin must be able to create, edit and destroy all users.
	- As an admin must be able to assign roles to the user on a team level.
- Must be able to manage Teams
	- Must have a name.
	- Must have a description.
	- Must have a single owner that is a user.
	- Must have multiple users with different roles per team.
	- Must be able to create, edit and destroy own teams.
	- As an admin must be able to create, edit and destroy all teams.
- Must be able to manage Roles
	- Must have a name.
	- Must have a description.
	-  Must have granular permissions that can be used in the code.
	- Must be able to create, edit and destroy own roles.
	- As an admin must be able to create, edit and destroy all roles.
- Must ensure unit tests are written in Rspec.
	- Must ensure proper specs are written and passing.


### BONUS POINTS

- Create a Dockerfile and docker-compose.yml file to allow other developers to easily get started. Be sure that you update your readme with instructions.
- Configure GitHub actions to run `standardrb` and `rspec` tests automatically.
