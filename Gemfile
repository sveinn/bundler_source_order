path 'gems'

### Gemfile Source Order Tests:
### SO has no effect on order of Gemfile.lock (alphabetical) nor load path (dependency).
### Order of 'gemspec' directive has no effect either. (Puts current dir at the front of load path).

## --Test 1
# a)
# gem 'gem_x'
# gem 'gem_y'
#> rm Gemfile.lock ; bundle ; ruby -e "require 'bundler/setup' ; require 'pp' ; pp $:[0..1]"
#=> ["loadpath_test/gems/gem_y/lib", "loadpath_test/gems/gem_x/lib"]

# b)
# gem 'gem_y'
# gem 'gem_x'
#> rm Gemfile.lock ; bundle ; ruby -e "require 'bundler/setup' ; require 'pp' ; pp $:[0..1]"
#=> ["loadpath_test/gems/gem_y/lib", "loadpath_test/gems/gem_x/lib"]


## --Test 2
# a)
# gemspec
# gem 'gem_z'
#rm Gemfile.lock ; bundle ; ruby -e "require 'bundler/setup' ; require 'pp' ; pp $:[0..3]"
#=> ["loadpath_test/lib",
#   "loadpath_test/gems/gem_z/lib",
#   "loadpath_test/gems/gem_y/lib",
#   "loadpath_test/gems/gem_x/lib"]

# b)
# gem 'gem_z'
# gemspec
#rm Gemfile.lock ; bundle ; ruby -e "require 'bundler/setup' ; require 'pp' ; pp $:[0..3]"
#=> ["loadpath_test/lib",
#   "loadpath_test/gems/gem_z/lib",
#   "loadpath_test/gems/gem_y/lib",
#   "loadpath_test/gems/gem_x/lib"]