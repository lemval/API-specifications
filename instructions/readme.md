## Adding to the document

### Way of working

First, create a branch off of the develop branch called 'feature/*my_change*'.
Update the documentation and push. Then, create a pull request and inform the team.

Publications are configured in the workflow file `.github/jekyll-gh-pages.yml`. Currently it runs using the 'main' branch. 
Do not edit the main or develop branch directly.

Each document has its own source, configured in the workflow file. Adding a document means changing this file.
All source files are concatenated using all files in sort order.

See here for configuration on Jekyll: https://jekyllrb.com/docs/configuration/default/. 
A valuable source is also: https://docs.github.com/en/pages/quickstart (see section on Jekyll).

### Updating

Title, description and theme can be found in the _config.yml file.
The site itself is generated based on the 'docs' folder for static files and the 'source' folder for files to be processed.

For updating the document, see for an extensive description the [Getting start pages](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/quickstart-for-writing-on-github) or dive directly into the [flavoured specification](https://github.github.com/gfm/).

## Releasing

Releases are done by merging the develop branch into the main branch, tagging it accordingly and creating a release.

## Comments and improvements

How comments can be made and are handled is described on the public pages. See the link on the generated site.



