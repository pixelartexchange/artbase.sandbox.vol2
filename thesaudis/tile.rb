###
#  get (tile) images from all-in-one composite
#
#  to run use:
#   $ ruby thesaudis/tile.rb




require 'pixelart'
require 'backgrounds'


saudis = ImageComposite.read( '../collections/saudis/saudis-24x24.png' )

ids = (0..10)

ids.each do |id|
  saudi = saudis[id]
  saudi = saudi.background( '#006C35' )   ## use a saudi flag green
  saudi.save( "./thesaudis/24x24/#{id}.png" )
end


puts "bye"