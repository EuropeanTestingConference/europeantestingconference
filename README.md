# europeantestingconference
Website for the European Testing Conference




## Updating instructions

### navigation

Navigation is element that's supposed to be visible at all times on top. Links can be to one-page links, or to separate pages.

Creating navigation entries is done using _config.yml file. Copy-paste-edit is a good tool for that.


## If you are having problems with json 1.8 

First run:
```
gem install nokogiri
bundle update
```
then continue....

## How to run locally


### Install required Ruby gems with [Bundler](http://bundler.io/)

```
bundle install
```


### Running website development mode locally

```
bundle exec jekyll serve --watch
```
