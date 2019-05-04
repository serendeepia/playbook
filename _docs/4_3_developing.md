---
layout: mylayout
index: 4.3
title: Developing
---

## Source code

Unless not specified by the client our code uses the latest version of the libraries and languages we use in the projects. We don’t change the major o minor version of the libraries during the lifespan of the project, but we do use the latest patches that solve bugs when available.

## Code style

We follow the Google style guides for our code: [https://google.github.io/styleguide/](https://google.github.io/styleguide/)

We have default templates for the code style for IntellJ Idea in the repo: [https://github.com/serendeepia/configuration_management](https://github.com/serendeepia/configuration_management) [https://google.github.io/styleguide/](https://google.github.io/styleguide/)

## Documentation

All code must be documented. 

Python code must include stubs (see [https://github.com/python/mypy/wiki/Creating-Stubs-For-Python-Modules](https://github.com/python/mypy/wiki/Creating-Stubs-For-Python-Modules)) in order to help the ide for the autocompletion and semantic checks.

## Unit testing

The code under `src/` must contain unit test for most important parts. 

For Python we use unittest (see [https://docs.python.org/3/library/unittest.html](https://docs.python.org/3/library/unittest.html)).

## Code review & Pull requests

We create pull requests when we want to submit anything to the master branch. This way the notifications by email will tell us about new papers, experiments, or coded changed. All pull request must be reviewed at least for one member of the team. 

No push to master

[See all pull requests](https://github.com/pulls?utf8=✓&q=is%3Aopen+is%3Apr+user%3Aserendeepia+archived%3Afalse+) 

### Code owners

We use GitHub and a file called CODEOWNER  (see [https://github.com/blog/2392-introducing-code-owners](https://github.com/blog/2392-introducing-code-owners)) in order to assign the reviewers automatically in every pull request.