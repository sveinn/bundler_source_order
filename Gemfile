path 'gems'

#gemspec

## Without loadpath manipulation in gemspec (i.e. "$LOAD_PATH.unshift(lib)")
#> rm Gemfile.lock ; bundle ; ruby -e "require 'bundler/setup' ; require 'pp' ; pp $:[0..2]"
# => ["loadpath_test/lib", "loadpath_test/gems/gem_z/lib"]

## With loadpath manipulation in gemspec
#> rm Gemfile.lock ; bundle ; ruby -e "require 'bundler/setup' ; require 'pp' ; pp $:[0..2]"
# => ["loadpath_test/gems/gem_z/lib", "loadpath_test/lib"]


## Ergo:
## If you use the "bundle gem" command to generate your gem the dependencies of your gem
## will be ahead of your gem on the load path.


