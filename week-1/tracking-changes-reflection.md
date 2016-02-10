Open the file in sublime. Copy the following questions in it and answer them.
How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes it possible for bugs or unintentional changes to be easily managed. When mistakes are made it's much easier to revert to previous versions or to find the source of the error to fix it.

What is a commit?

A commit is the process of saving the current changes that have been made in a repository.

What are the best practices for commit messages?

The best practices for commit messages is to make it in the present tense and to include as much detail as possible about what changes were made as well as any resources that were referenced.

What does the HEAD^ argument mean?

HEAD^ refers to the previous commit state prior to the current one.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are modified, staged, and committed. Once you have a file that's been updated (it's in the modified state) then you can use the command 'git add <file name>' to move it into the 'staged' stage, lastly you use the commands 'git commit -m "<insert comment here>"' to move the file into the committed state.

Write a handy cheatsheet of the commands you need to commit your changes.

git checkout <directory name> - changes locations within the repository

git checkout -b <branch name> - creates a new branch

git add <file name> - adds the file to the stage to be committed

git commit -m (or -v) “<insert message here>” - commits the file

What is a pull request and how do you create and merge one?

A pull request is the process of creating a request to merge the changes you created in your feature branch into the master branch.

Why are pull requests preferred when working with teams?

Pull requests are prefered so that the master code is never updated without being verified. It allows another teammate to verify changes prior to commiting them to the master.

Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
Add your changes, commit them, and make a pull request to your repository.
Merge the pull request into your master branch
Submit the link to your reflection file. It should be located at:

https://github.com/[YOUR-USERNAME]/phase-0/blob/master/week-1/tracking-changes-reflection.md