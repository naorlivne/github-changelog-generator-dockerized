# github-changelog-generator-dockerized
a dockerized version of https://github.com/github-changelog-generator/github-changelog-generator

required envvars:

 * GITHUB_USER - the user/org/owner of the project in github.
 * CHANGELOG_GITHUB_TOKEN -  optional - the token used to auth against github, if not set will use an unauthenticated user which is limited to 50 API requests.
 * GITHUB_PROJECT - the project name in github.
 * OUTPUT_PATH - optional - the path inside the container that the changlog file will be created to, defaults to `/output/CHANGELOG.md` if not set.