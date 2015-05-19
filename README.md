# DigitalGov Search

## How to add a new post

1. Clone the `source` branch.
1. Create a new file in the [drafts directory](https://github.com/GSA/search.digitalgov.gov/tree/master/drafts)
   using the following naming convention: `YYYY-MM-DD-post-filename-title.md`
1. Add the YAML block to the top of the file.
   You can use the following [sample file](https://github.com/GSA/search.digitalgov.gov/tree/master/drafts/2014-03-05-sample.md) as a starting point.
1. Add the content of your new post below the YAML block.
   Feel free to use HTML,
   [Markdown](http://daringfireball.net/projects/markdown/syntax) or
   [Liquid Extension](https://github.com/mojombo/jekyll/wiki/Liquid-Extensions).
1. Add, commit and push your new post back to the repository.
1. After roughly 3 minutes, visit `http://search.digitalgov.gov/drafts/post-filename-title.html` to preview your post.
   If you added a permalink config in your post, visit `http://search.digitalgov.gov/drafts/your-permalink.html`
1. When you're ready to publish your post, move the file from from drafts to the [_posts directory](https://github.com/GSA/search.digitalgov.gov/tree/master/_posts).

## How to set up your development environment

Open a Terminal window. Start homebrew.
    
    $ brew update
    $ brew doctor

We use bundler to manage gems. Install bundler and other required gems.

    $ gem install bundler
    $ bundle install

Start a server and try it out.

    $ bundle exec compass watch (ctrl+c to stop)
    $ bundle exec jekyll serve

Go to <http://localhost:4000>.

---

* For more information about Jekyll, visit [the wiki pages](https://github.com/mojombo/jekyll/wiki).
* If you don't already have it, you'll need [Ruby 2.0.0](http://www.ruby-lang.org/en/downloads). [RVM](http://rvm.io) is recommended to install Ruby on your development environment.

    $ rvm install ruby-2.0.0

