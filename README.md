# bundler_source_order
Gemfile source order experiment

The Gemfile source order has no effect on order of Gemfile.lock (alphabetical) nor load path (dependency) as one might expect.
Order of 'gemspec' in relation to 'gem' has no effect either ('gemspec' puts current dir at the front of load path).
