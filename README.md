## NOTES TO SELF

* import most-recent CV from assets repository
* create teaching philosophy
* create research philosophy

## SETUP

### OBJECTIVE
Create a website using Jekyll and GitHub Pages.

### DESCRIPTION
GitHub allows its users to create a user site and multiple project sites based on the repositories in their account. This service, known as GitHub Pages, publishes a website based on a particular branch in the repository. Jekyll is a static site generator that is easy to use. Written in Ruby, Jekyll allows users to write content in Markdown and takes care of the page and layout formatting "automatically." Those who want more agency can still use HTML to customize the website. Jekyll also comes with a variety of themes that can be modified as necessary.

The user site is based off a public repository in the GitHub account named `USER`.github.io. This name will also be the URL of the website. The publication source is the `master` branch.

Meanwhile, project sites can be based on any of the repositories within the GitHub account and will have the URL *`USER`.github.io/`REPO`*. Project sites can be published from the `gh-pages` branch (see below) or the `master/docs` branch.


### JEKYLL INSTALLATION
Note: run `brew upgrade ruby` to bring Ruby up-to-date.
```
ruby -v
gem -v
gem install bundler jekyll
jekyll -v
```

### GITHUB SETUP
In GitHub, create a new public repository titled `USER`.github.io.

### JEKYLL SETUP
```
cd Desktop
jekyll new <USER>.github.io
cd <USER>.github.io
```
If working on a project site as opposed to a user site: In _config.yaml, change baseurl to the name of the repo: `USER`.github.io

### CONNECT GITHUB AND JEKYLL SETUPS (FOR USER SITE)
```
git init
git checkout -b master
git status
git add .
git commit -m "initial commit"
git remote add origin https://github.com/<USER>/github.io.git OR git@github.com:<USER>/<USER>.github.io
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
The _drafts folder is ignored when building the site. Hence, work-in-progress blog posts can stay in there will ready-to-be-published posts should be in the _posts folder. The _layouts, _includes, and _sass folders are for formatting the website. The assets folder contains external documents while the pages folder stores the webpages themselves.

### ADD PROJECT SITES
Create GitHub repo online titled `REPO`. Then create a local repository with the same name. Note that we will use a gh-pages branch. If we want to use an existing repository, we will create this branch with its own commit history.
```
cd
cd Desktop
mkdir <REPO>
cd <REPO>
git init
git checkout --orphan gh-pages
jekyll new .
```
Now we need to edit the Gemfile. Remove `gem "jekyll", "~> 4.0.0"` and change `gem "github-pages", group: :jekyll_plugins` to `gem "github-pages", "~> 203",  group: :jekyll_plugins` after uncommenting the line. Replace 203 with what is in [Dependency Versions](https://pages.github.com/versions/)
```
git remote add origin https://github.com/<USER>/<REPO> OR git@github.com:<USER>/<REPO>
git add .
git commit -m "initial commit"
git push -u origin gh-pages
```

### RESOURCES
* [Giraffe Academy Videos](https://www.youtube.com/watch?v=fqFjuX4VZmU&list=PLLAZ4kZ9dFpOPV5C5Ay0pHaa0RJFhcmcB&index=19)
* [Professor DiTraglia's user GitHub](https://github.com/fditraglia/fditraglia.github.io)
* [GitHub Pages Guide](https://help.github.com/en/github/working-with-github-pages/)
* [Multiple SSH Keys](https://gist.github.com/jexchan/2351996)
* [Jonathan McGlone Blog Post](http://jmcglone.com/guides/github-pages/)
* https://github.com/prose/starter/issues/44
* [Zixu Wang's blog post for including math typesetting](https://hw311.me/en/jekyll/2019/01/23/support-latex-in-jekyll-blog/)
* [Joe Kampschmidt's post for creating a list of posts by tag]
* [Jesse Cambon’s blog post for incorporating R functionality with blog posts](https://jessecambon.github.io/2019/12/08/practical-tidy-evaluation.html)
