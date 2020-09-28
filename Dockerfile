FROM naorlivne/github-changelog-generator-dockerized:v36

ENV PLUGIN_OUTPUT_PATH=CHANGELOG.md

CMD github_changelog_generator -u $PLUGIN_GITHUB_USER -p $PLUGIN_GITHUB_PROJECT -o $PLUGIN_OUTPUT_PATH
