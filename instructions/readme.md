## Adding to the document

### Way of working

First, create a branch off of the develop branch called 'feature/*my_change*'.
Update the documentation and push. Then, create a pull request and inform the team.

Publications are configured in the workflow file `.github/jekyll-gh-pages.yml`. Currently it runs using the 'main' branch.  
**Do not edit the main or develop branch directly.**

Each document has its own source, as configured in the workflow file. Adding a document means changing this file.
All source files are concatenated using all files in sort order.

See here for configuration on Jekyll: https://jekyllrb.com/docs/configuration/default/. 
A valuable source is also: https://docs.github.com/en/pages/quickstart (see section on Jekyll).

### Updating

Title, description and theme can be found in the `docs/_config.yml` file. Additional theming or styling can be done via the
`docs/assets/css/style.scss` file.
The site itself is generated based on the 'docs' folder for static files and the 'source' folder for files to be processed.

For updating the document, see for an extensive description the [Getting start pages](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/quickstart-for-writing-on-github) or dive directly into the [flavoured specification](https://github.github.com/gfm/).

Diagrams can be made using [Mermaid](https://mermaid.js.org/syntax/flowchart.html). Use a code block (three backticks) using the 'mermaid' formatter.

## Releasing

Releases are done by merging the develop branch into the main branch, tagging it accordingly and creating a release.

## Comments and improvements

How comments can be made and are handled is described on the public pages. See the link on the generated site.

## Style changes

To set up your environment to develop the theme, run `bundle install`. You might also need to `gem install github-pages && gem install jekyll-seo-tag`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

The base style sheet of the original theme is excluded from use for this repository (by means of not including it).




