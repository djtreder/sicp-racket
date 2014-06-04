# A sample Guardfile
# More info at https://github.com/guard/guard#readme
guard :rackunit do
  watch(%r{^(.*)/tests/.+-tests.rkt$})
  watch(%r{^(.*)/src/(.+).rkt$}) { |m| "#{m[1]}/tests/#{m[2]}-tests.rkt" }
end
