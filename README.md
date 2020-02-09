git-diff-syntax-highlight
=========================

Utilities to include syntax highlighting in the terminal, for git diffs and other commands.
This is a patched version of https://gist.github.com/skanev/0eeb943e3111a1df55fd
which fixes rare bugs I've encountered in that gist.

This is configured to highlight ruby, C, C++, Clojure, CSS, ERB, Go, Java, JavaScript, JSON, PHP, Lua, Python, SASS, SCSS, SQL, XML, and YAML files.

Scripts
-------

- `git-diff-syntax-highlight.rb` - A syntax highlighter for git diffs.
- `colorless` - Like `less filename.extension`, but with syntax highlighting.
- `coderay_colorize` - Like `cat filename.extension`, but with syntax highlighting.

Known Issues
------------

- RVM can break this when switching to a different ruby version.
- Highlighting using background colors is poorly handled and result in code that are hard to read.
  This may be fixable by ensuring some minimum contrast when generating color codes.
- At the time of writing, there is no support for Markdown in `coderay`, which this depends on

Dependencies
------------

This requires that `term-ansicolor` and `coderay` be installed, and that ruby be set up.

```
gem install --user term-ansicolor coderay
```

Colorizing Git diffs
--------------------


Add the following to .gitconfig.

The `simple-log`, `simple-diff`, and `simple-show` aliases are provided because syntax highlighting is slow for projects with long histories,
and because changes in rvm paths can break diffs completely.

```
[core]
    pager = /path/to/git-diff-syntax-highlight.rb --highlight | less -F -X
    # The -F -X is optional.
    # In addition to --highlight, --coderay-colors may be used to change the syntax highlighting.
```


The `git-simple-*` scripts are found in [./bin](./bin).
After adding those to a directory the shell's `$PATH`, you probably also want to create aliases for the original diffs.

```
[alias]
	simple-log = !git-simple-log
	simple-diff = !git-simple-diff
	simple-show = !git-simple-show
```
