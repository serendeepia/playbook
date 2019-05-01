# Project management

## Documentation

We use online tools to store all the documentation. The documents are in a shared folder in Google Drive. This is the root structure we follow:

<table>
  <tr>
    <td><code>/</code> (root dir)</td>
    <td>The root contains general documents.</td>
  </tr>
  <tr>
    <td><code>/Projects/</code></td>
    <td>Contains one directory per project.</td>
  </tr>
  <tr>
    <td><code>/Projects/2018-01-02-XXX/</code></td>
    <td>Example of a directory for a project. These directories must be named with the date first so they are easier to sort this way.</td>
  </tr>
</table>

This is the structure per project:

<table>
  <tr>
    <td>(project root dir)</td>
    <td>Contains working documents we won't send to the client never</td>
  </tr>
  <tr>
    <td><code>Deliverable/</code></td>
    <td>All the deliverable documents we have submitted to the client.</td>
  </tr>
  <tr>
    <td><code>Deliverable/2018-01-02-OFFER-v1</code></td>
    <td>Example of deliverable documents. It must start with the date we submitted it to the client and end with the version. We cannot modify this documents, they must be in read-only mode.</td>
  </tr>
  <tr>
    <td><code>Working/</code></td>
    <td>All the deliverable documents that are under development.</td>
  </tr>
  <tr>
    <td><code>Working/OFFER-v2</code></td>
    <td>Example of a deliverable document under development. This documents only have the name and the version.</td>
  </tr>
</table>

The documents must have the versioning activated and we should name the versions with two numbers. The first one implies big changes and the second implies additions. Typos and bugs do not modify the version number.

One person is in charge of each document.

## Project tracking (modules and tasks)

We use Github issue tracking. 

## Deliverables to client

The documents that we deliver to the clients are:

* `OFFER`: the offer posed to the client. It contains: 
    * the scope, requirements and constraints of the project
    * the methodology to follow during the project
    * the technology we are going to use
    * how the prototype is going to be deployed for the client
    * the planification with the phases of the project
    * the deliverable documents and prototypes
    * the budget
    * Terms and conditions. 
* `EXPLORATORY_ANALISYS`: results of the exploratory analysis
* `PROTOTYPE`: working model and description of the model (optional)
* `SCRIPTS`: model related scripts (optional). 
* `STATE OF THE ART REPORT`: research report, papers and patents (optional).
* `RESEARCH RESULT`: paper or patents (optional).
* `DATASETS`: Data refinery results. 
* `DEPLOYMENT`: the deployment guidelines for the prototype (optional)
* Documents for the ad-hoc training

# Source code

Unless not specified by the client our code uses the latest version of the libraries and languages we use in the projects. We don’t change the major o minor version of the libraries during the lifespan of the project, but we do use the latest patches that solve bugs when available.

## Project structure

_NOTE: the structure might be different for public projects as needed_

<table>
  <tr>
    <td><code>/</code> (root dir)</td>
    <td></td>
  </tr>
  <tr>
    <td><code>/README.md</code></td>
    <td>Description of the project and main guideline to execute the commands.</td>
  </tr>
  <tr>
    <td><code>/LICENSE</code></td>
    <td>License of the code</td>
  </tr>
  <tr>
    <td><code>/src/</code></td>
    <td>Source code of the project. It must contain at least one main module name.</td>
  </tr>
  <tr>
    <td><code>/src/requirements.txt</code></td>
    <td>File with the dependencies of the project</td>
  </tr>
  <tr>
    <td><code>/data/</code></td>
    <td>Contains the data of the project or a description of how to get it.</td>
  </tr>
  <tr>
    <td><code>/data/README.md</code></td>
    <td>Description of the data: how is the data, how we clean it, where is the data (aws, gs,...), etc</td>
  </tr>
  <tr>
    <td><code>/data/raw/</code></td>
    <td>Contains raw data</td>
  </tr>
  <tr>
    <td><code>/data/clean/</code></td>
    <td>Contains the data cleaned</td>
  </tr>
  <tr>
    <td><code>/papers/</code></td>
    <td>Directory with the papers</td>
  </tr>
  <tr>
    <td><code>/papers/README.md</code></td>
    <td>Description of the papers. It contains a table with the title of the paper, the date it was published, a link to the paper inside the repo, a comment describing why this paper is relevant for the project and a ranking of how relevant is the paper (1 less relevant, 2 medium relevant, 3 very relevant). Most relevant papers must be on top of the table.</td>
  </tr>
  <tr>
    <td><code>/papers/2016-TITLE.pdf<</code>/td>
    <td>Example of paper in the repo. The names must start with the date they were published followed by the title of the paper.</td>
  </tr>
  <tr>
    <td><code>/experiments/</code></td>
    <td>Directory with the experiments</td>
  </tr>
  <tr>
    <td><code>/experiments/README.md</code></td>
    <td>Brief description of the experiments. Most recent experiments must be at the top.</td>
  </tr>
  <tr>
    <td><code>/experiments/2017-01-01-DESCR/</code></td>
    <td>Example of directory for an experiment. It must start with the date the experiment started. It also contains a README.md file with the description of the experiment and its results and any script used.</td>
  </tr>
  <tr>
    <td><code>/exploratory-analysis/</code></td>
    <td>Directory with all the code used for the exploratory analysis. This is used mostly as a backup of the exploratory analysis, so there are no rules for its internal structure.</td>
  </tr>
  <tr>
    <td><code>/documentation/</code></td>
    <td>Directory with all the documentation required for the dissemination and exploitation. Every piece of code, definition, image or video relevant to the project which can be further useful for writing a paper/patent/talk, should be stored here.</td>
  </tr>
</table>


Note that the code is evolving continuously and old experiments might not work with recent code. In order to replicate the experiments we should use the commit more close to the date the experiment was launch. We try not to perform big modifications in the code under `src/` but a continuous addition of new features.

## Code style

We follow the Google style guides for our code: [https://google.github.io/styleguide/](https://google.github.io/styleguide/)

We have default templates for the code style for IntellJ Idea in the repo: [https://github.com/serendeepia/configuration_management](https://github.com/serendeepia/configuration_management) [https://google.github.io/styleguide/](https://google.github.io/styleguide/)

## Code review & Pull requests

We create pull requests when we want to submit anything to the master branch. This way the notifications by email will tell us about new papers, experiments, or coded changed. All pull request must be reviewed at least for one member of the team. We use GitHub and a file called CODEOWNER  (see [https://github.com/blog/2392-introducing-code-owners](https://github.com/blog/2392-introducing-code-owners)).

in order to assign the reviewers automatically in every pull request.

## Versioning

We do not do versioning of source code. In case we need to do it we use semantic versioning (see [http://semver.org/](http://semver.org/)) and tag the commit as appropriate.

## Documentation

All code must be documented. Python code must include stubs (see [https://github.com/python/mypy/wiki/Creating-Stubs-For-Python-Modules](https://github.com/python/mypy/wiki/Creating-Stubs-For-Python-Modules)) in order to help the ide for the autocompletion and semantic checks.

## Unit testing

The code under `src/` must contain unit test for most important parts. In case of python we use unittest (see [https://docs.python.org/3/library/unittest.html](https://docs.python.org/3/library/unittest.html)).

# Data

Small dataset are under the `data/` directory of the project. We use git-lfs for large files. 

Big datasets can be in gs or aws. Ideally we synchronize the data locally to the machine when the training is going to be performed when needed.

Some guidelines about the data:

* We shouldn’t delete any data sample
* We should use md5 or unique identifier for the files of the data when appropriate (for example for images downloaded from internet)
* We should include a description file to describe the data, this file must be also in the github repository.

# Experimentation

## How to perform an experiment

1. Pose an hypothesis
2. Find papers that support your hypothesis
3. Prepare and execute the experiment
4. Describe and document results
5. Review initial hypothesis with the results
6. Describe future lines of research

All this information must be included in the README.md file of the experiment.

## How to organize the experiments

See section of project structure.

After the exploratory analysis we add the future lines of research as issues labeled as `enhancements` in GitHub. This way we can assign future experiments and know who is working at what. Every time we finish and experiment and we describe the future lines of research we must add these ones as GitHub issues with the label “enhancement” too.

## How to document the experiments

After each experiment we should estimate resources employed, mostly time and money. This will be useful to budget subsequent experiments.

# Research

## How to organize the papers

See section of project structure.

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

