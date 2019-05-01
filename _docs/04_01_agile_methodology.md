---
layout: mylayout
index: 04.01
title: Methodology
---

## Project tracking (modules and tasks)

We use Github issue tracking. 



## Versioning

We do not do versioning of source code. In case we need to do it we use semantic versioning (see [http://semver.org/](http://semver.org/)) and tag the commit as appropriate.

# Data

Small dataset are under the `data/` directory of the project. We use git-lfs for large files. 

Big datasets can be in gs or aws. Ideally we synchronize the data locally to the machine when the training is going to be performed when needed.

Some guidelines about the data:

* We shouldn’t delete any data sample
* We should use md5 or unique identifier for the files of the data when appropriate (for example for images downloaded from internet)
* We should include a description file to describe the data, this file must be also in the github repository.


# Communication

## Communication with the client

Only one person (SPOC) will be in charge of all the communication with a client. Other members of the team must be copied in all the communication emails to be informed of the talks.

## Internal communication

Real time communication is done in Slack. There is one channel in Slack per active project, old project's channels are archived. There are also general Slack channels that start with an underscore.

The GitHub repositories and the documents in Google drive are integrated in Slack in a channel named `code_bots` for notifications. 

## Internal tracking

### Task

We use Trello for tracking general tasks. We have 4 columns per project:
* `Backlog`: for task that we could perform in the future
* `TO-DO`: Task to do
* `DOING`: Task currently in execution
* `DONE`: Task already finished, they should be archived after a week or more when the relevant people has been notified that it has finished.

Each task should have at least assigned one person.

### Code issues

Issues in the code are tracked inside GitHub with its own tracking tool.

