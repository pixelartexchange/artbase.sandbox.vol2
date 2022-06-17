#####
# to run use:
#   $ ruby reggaetonpunks/convert.rb


require_relative '../artbase'



collection = 'reggaetonpunks'

convert_images( collection, from: 'gif', to: 'png', dir: 'token-i' )

puts "bye"

