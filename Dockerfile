# using latest offical ruby image that's based on latest alpine
FROM ruby:2.6.3-alpine3.9

# install the gem of the github_changelog_generator
RUN gem install github_changelog_generator -v v1.14.3

# create the default path where the output will reside in
RUN mkdir /output
ENV OUTPUT_PATH=/output/CHANGELOG.md

CMD github_changelog_generator -u $GITHUB_USER -p $GITHUB_PROJECT -o $OUTPUT_PATH