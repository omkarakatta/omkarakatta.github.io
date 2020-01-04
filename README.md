### OBJECTIVE
Create a website using Jekyll and GitHub Pages.

### DESCRIPTION
GitHub allows its users to create a user site and multiple project sites based on the repositories in their account. This service, known as GitHub Pages, publishes a website based on a particular branch in the repository. Jekyll is a static site generator that is easy to use. Written in Ruby, Jekyll allows users to write content in Markdown and takes care of the page and layout formatting "automatically." Those who want more agency can still use HTML to customize the website. Jekyll also comes with a variety of themes that can be modified as necessary.

The user site is based off a public repository in the GitHub account named `USER`.github.io. This name will also be the URL of the website. The publication source is the `master` branch.

Meanwhile, project sites can be based on any of the repositories within the GitHub account and will have the URL *`USER`.github.io/`REPO`*. Project sites can be published from the `gh-pages` branch or the `master/docs` branch. 


### JEKYLL INSTALLATION
```
ruby -v
gem -v
gem install bundler jekyll
jekyll -v
```

### GITHUB SETUP
In GitHub, create a new public repository titled `USER`.github.io

### JEKYLL SETUP
```
cd Desktop
jekyll new `USER`.github.io
cd `USER`.github.io
```
If working on a project site as opposed to a user site: In _config.yaml, change baseurl to the name of the repo: `USER`.github.io

### CONNECT GITHUB AND JEKYLL SETUPS (FOR USER SITE)
```
git init
git checkout -b master
git status
git add .
git commit -m "initial commit"
git remote add origin https://github.com/USER/github.io.git OR git@github.com:omkarakatta/omkarakatta.github.io
git push origin master
```

### ADD FOLDERS
```
mkdir _drafts
mkdir _layouts
mkdir _includes
mkdir _data
mkdir _sass
mkdir assets
mkdir pages
```

### ADD PROJECT SITES
# create GitHub repo online titled <PROJECT>
cd
cd Desktop
mkdir <PROJECT>
cd <PROJECT>
git init
git checkout --orphan gh-pages
jekyll new .
# EDIT GEMFILE!!!
git remote add origin <GITHUB URL>
git add .
git commit -m "initial commit"
git push -u origin gh-pages
# modify as needed



### RESOURCES
# https://www.youtube.com/watch?v=fqFjuX4VZmU&list=PLLAZ4kZ9dFpOPV5C5Ay0pHaa0RJFhcmcB&index=19
# https://github.com/fditraglia/fditraglia.github.io
# https://help.github.com/en/github/working-with-github-pages/testing-your-github-pages-site-locally-with-jekyll
# https://gist.github.com/jexchan/2351996