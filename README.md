# DigitalGov Search

## How to add a new post

1. Clone the `source` branch.
2. Create a new file in the [drafts directory](https://github.com/usasearch/usasearch.github.com/tree/source/drafts)
   using the following naming convention: `YYYY-MM-DD-post-filename-title.md`
3. Add the YAML block to the top of the file.
   You can use the following [sample file](https://raw.github.com/usasearch/usasearch.github.com/source/drafts/2013-03-19-sample.md) as a starting point.
4. Add the content of your new post below the YAML block.
   Feel free to use HTML,
   [Markdown](http://daringfireball.net/projects/markdown/syntax) or
   [Liquid Extension](https://github.com/mojombo/jekyll/wiki/Liquid-Extensions).
5. Add, commit and push your new post back to the repository.
6. After roughly 3 minutes, visit `http://usasearch.howto.gov/drafts/post-filename-title.html` to preview your post.
   If you added a permalink config in your post, visit `http://usasearch.howto.gov/drafts/your-permalink.html`
7. When you are ready to publish your post, move the file from from drafts to the [_posts directory](https://github.com/usasearch/usasearch.github.com/tree/source/_posts).

## Setup development environment

* Open a Terminal window
* start homebrew ($ brew doctor)

### Ruby

You will need [Ruby 2.0.0](http://www.ruby-lang.org/en/downloads).
[RVM](http://rvm.io) is recommended to install Ruby on your development environment.

### Gems

We use bundler to manage gems. You can install bundler and other required gems like this:

    $ gem install bundler
    $ bundle install

### Running it

Start a server and try it out:

    $ bundle exec compass watch
    $ bundle exec jekyll

<http://127.0.0.1:4000>

For more information about Jekyll, visit [the wiki pages](https://github.com/mojombo/jekyll/wiki).
