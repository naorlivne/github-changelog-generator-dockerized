# github-changelog-generator-dockerized

CI/CD build status: [![CI/CD](https://github.com/naorlivne/github-changelog-generator-dockerized/actions/workflows/full_ci_cd_workflow.yml/badge.svg)](https://github.com/naorlivne/github-changelog-generator-dockerized/actions/workflows/full_ci_cd_workflow.yml)

A dockerized version of https://github.com/github-changelog-generator/github-changelog-generator

Required & optional envvars:

 * GITHUB_USER - the user/org/owner of the project in github.
 * CHANGELOG_GITHUB_TOKEN -  optional - the token used to auth against github, if not set will use an unauthenticated user which is limited to 50 API requests.
 * GITHUB_PROJECT - the project name in github.
 * OUTPUT_PATH - optional - the path inside the container that the changlog file will be created to, defaults to `/output/CHANGELOG.md` if not set.
 
 
Example run command:

 ```bash
docker run -e GITHUB_USER=myusername -e GITHUB_PROJECT=myproject -v `pwd`:/output naorlivne/github-changelog-generator-dockerized
```
