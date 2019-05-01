---
layout: mylayout
index: 04.02
title: Documentation
---

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