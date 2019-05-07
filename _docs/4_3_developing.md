---
layout: mylayout
index: 4.3
title: Developing
---

We follow some guidelines for the projects when we are developing them.

## Development protocol

We use the [GitFlow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) development protocol.

1. Select one of your assigned issues (or find one without anyone assigned).
1. Start a new git branch (follow our [name convections](#name-convections)
1. Start coding!
1. Commit changes when you finished
1. Create a [Pull Request](#pull-requests)
1. Ask someone to review your code
1. Make any fix asked by the reviewers
1. Merge and delete the branch when the Pull Requests is ok

[See all issues](https://github.com/issues?utf8=✓&q=is%3Aopen+is%3Aissue+user%3Aserendeepia+archived%3Afalse+) 

## Source code

Unless not specified by the client our code uses the latest version of the libraries and languages we use in the projects. We don’t change the major o minor version of the libraries during the lifespan of the project, but we do use the latest patches that solve bugs when available.

### Version control

We use [Git](https://git-scm.com/) to manage our code and [GitHub](https://github.com/serendeepia) for hosting the repositories. In order to know more about Git you can check this [tutorial for beginners](https://rogerdudler.github.io/git-guide/).

We try to write [good commit messages](https://chris.beams.io/posts/git-commit/) for our changes in the code. The messages should be relevant, short and point objectively what changes were made. Any programmer should understand the changes in the code with a quick read of the commit.

## Code style

We follow the Google style guides for our code: [https://google.github.io/styleguide/](https://google.github.io/styleguide/).

In general we try the code to be simple and concise:
* Avoid long methods or files
* There shouldn't be copy&paste code
* The input data must be checked for the correct type, length, format, range and encoded.
* Invalid parameter values must be handled.
* The code should be a testable, so don’t add too many or hide dependencies.

We have default templates for the [code style for IntellJ Idea](https://github.com/serendeepia/playbook/tree/master/assets/code_style). Feel free to add the new ones you need after reviewing them within your team.

## Documentation

All code must be documented and easy to understand for any member of the team:
* Methods (parameters and return value) and classes must have comments.
* Edge-cases mut be described
* Incomplete code must be marked or flagged using a comment with the `TODO` keyword.

Python code must include [stubs](https://github.com/python/mypy/wiki/Creating-Stubs-For-Python-Modules) in order to help the ide for the autocompletion and semantic checks.

## Unit testing

The code under `src/` must contain unit test for most important parts for their intended functionality.

For Python we use [unittest](https://docs.python.org/3/library/unittest.html).

## Pull requests

We create pull requests when we want to submit anything to the master branch. This way the notifications by email will tell us about new papers, experiments, or coded changed. 

All pull request must be reviewed at least for one member of the team. For this reason we prefer creating small Pull Requests) 

When creating a Pull Request you must include:
* A description of the feature or fix
* Screenshots if relevant
* Details about how to test the new code if relevant
* Information about how to run migrations in the production environment

We must never push to master directly. All the code in master should have been reviewed before for any other member of the team and be free of bugs that prevent other members of the team to execute the code without issues. 

We prefer to squash merge instead of a normal merge. Only do a normal merge if you want to keep the history of changes in our branch. After a Pull Requests is merged you should delete the related Git Branch.

[See all pull requests](https://github.com/pulls?utf8=✓&q=is%3Aopen+is%3Apr+user%3Aserendeepia+archived%3Afalse+) 

### Pull requests review
 
When reviewing the code don't forget to check the considerations described in [code style](#code-style), [documentation](#documentation) and [unit testing](#unit-testing) sections.

### Name convections

All our Pull Requests and Git Branches follow the next name convection:
* `feature/` for features
* `fix/` for bug fixes
* `refactor/` for improvements/refactor
* `other/` for random tasks

## Code owners

We use GitHub and a file called [CODEOWNER](https://github.com/blog/2392-introducing-code-owners) in order to assign the reviewers automatically in every pull request.
