#####
# to run use:
#   $ ruby punkforce/convert.rb


require_relative '../artbase'



collection = 'punkforce'

convert_images( collection, from: 'gif', to: 'png', dir: 'token-i' )

puts "bye"

