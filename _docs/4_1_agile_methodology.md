---
layout: mylayout
index: 4.1
title: Methodology
---

We follow an agile methodology with some modifications for machine learning projects. The methodology enable us to perform a [Continous Delivery](https://en.wikipedia.org/wiki/Continuous_delivery) of our products and projects.

## Agile methodology

We follow the [Scrum methodology](https://en.wikipedia.org/wiki/Scrum_(software_development)) where usually the Product Owner is also the Scrum master. We also use [Kanban boards](https://en.wikipedia.org/wiki/Kanban_board) to track the current status of the sprint.

Our typical project is between one and three months long and we divide it in sprints of 2 or 3 weeks.

### Sprints

A sprint is a timeboxed effort; that is, it is restricted to a specific duration. Each sprint starts with a sprint planning event that aims to define a sprint backlog, identify the work for the sprint, and make an estimated forecast for the sprint goal. Each sprint ends with a sprint review and sprint retrospective, that reviews progress to show to stakeholders and identify lessons and improvements for the next sprints.

We create [milestones in GitHub](https://help.github.com/en/articles/about-milestones) as a way to represent a sprint and to prioritize the tasks.

### Sprint planning

At the beginning of a sprint, the scrum team holds a sprint planning event to:
* Mutually discuss and agree on the scope of work that is intended to be done during that sprint.
* Select product backlog items that can be completed in one sprint.

### Sprint review and retrospective

At the sprint review, the team:
* reviews the work that was completed and the planned work that was not completed
* presents the completed work to the stakeholders (a.k.a. the demo)
* collaborates with the stakeholders on what to work on next

Three main questions are asked in the sprint retrospective:
* What went well during the sprint? 
* What did not go well? 
* What could be improved for better productivity in the next sprint?

### Kanban board

Our kanban boards have 5 columns:
* `TO DO`: tasks to be done
* `In Progress`: tasks we are working right now, noone should work in more than a thing at a time.
* `Review in progress`: tasks completed which require to be reviewed by other team members
* `Review approved`: tasks approved and ready to merge with the main code of the project
* `Done`: tasks completed

## Project tracking

We use Github [issue tracking](https://guides.github.com/features/issues/) to define tasks and [projects boards](https://help.github.com/en/articles/about-project-boards) to track the status of the projects (and sprints).

Our issues or tasks can have different labels depending on their nature:
* `enhancement`: new feature or request
* `bug`: something that is not working as expected and needs a fix
* `duplicated`: this task/issue was a duplicate of other one
* `question`: more information is needed
* `wontfix`: this task/issue won't be resolved

The boards in GitHub are automated, this means we don't need to move the issues from one column to another. They move automatically.

## Versioning

We do not do versioning of source code but we do name every sprint release with an increase number. In case we need to do it, we use semantic versioning (see [http://semver.org/](http://semver.org/)) and tag the commit as appropriate.

## Data

Small datasets are under the `data/` directory of the project. We use git-lfs for large files. 

Big datasets can be in gs or aws. Ideally, we synchronize the data locally to the machine when the training is going to be performed when needed.

Some guidelines about the data:
* We shouldn’t delete any data sample
* We should use md5 or a unique identifier for the files of the data when appropriate (for example for images downloaded from internet)
* We should include a description file to describe the data, this file must be also in the github repository.


## Communication with the client

Only one person (SPOC) will be in charge of all the communication with a client. Other members of the team must be copied in all the communication emails to be informed of the talks.

## Bots

The GitHub repositories and the documents in Google drive are integrated in Slack in a channel named `code_bots` for notifications. 


