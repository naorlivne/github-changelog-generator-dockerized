# using latest offical ruby image that's based on latest alpine
FROM ruby:2.7.0-alpine
 
# install the gem of the github_changelog_generator
RUN gem install faraday-net_http -v 3.0.2
RUN gem install faraday -v 2.8.1
RUN gem install github_changelog_generator -v 1.15.0

# create the default path where the output will reside in
RUN mkdir /output
ENV OUTPUT_PATH=/output/CHANGELOG.md

CMD github_changelog_generator -u $GITHUB_USER -p $GITHUB_PROJECT -o $OUTPUT_PATH
