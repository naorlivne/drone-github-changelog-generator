> **Warning**
> Drone cloud stopped working for months and as the developers of Drone seemed to stop caring I'm no longer able to fully test this nor will I longer have any use of it, as a result I'm stopping all development of this plugin.

# drone-github-changelog-generator

CI/CD build status: [![Build Status](https://cloud.drone.io/api/badges/naorlivne/drone-github-changelog-generator/status.svg)](https://cloud.drone.io/naorlivne/drone-github-changelog-generator)

Drone plugin for deploying to [github-changelog-generator](https://github.com/github-changelog-generator/github-changelog-generator).

## Usage

This plugin can be used to create a changelog file based on GitHub tags, it will not auto-push it into the repo but rather create a changelog file for you to upload into your desired location via other Drone plugins.

The below pipeline configuration demonstrates simple usage:

```yaml
kind: pipeline
type: docker
name: default

steps:
- name: create_changelog
  image: naorlivne/drone-github-changelog-generator
  settings:
    github_user: naorlivne
    github_project: drone-github-changelog-generator
    output_path: CHANGELOG.md
```

## Parameter Reference

#### github_user

The GitHub user name which hosts the repo, can also use a GitHub organization name

#### github_project

The GitHub repo name

#### output_path

The changelog file path to be created, defaults to `CHANGELOG.md` in the current working directory (repo root by default).
