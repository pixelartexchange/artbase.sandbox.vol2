#####
# to run use:
#   $ ruby reggaetonpunks/composite.rb


require_relative '../artbase'



collection = 'reggaetonpunks'



composite = ImageComposite.new( 10, 8 )

ids = (1..80)
ids.each do |id|
  punk = Image.read( "./#{collection}/24x24/#{id}.png" )
  composite << punk.mirror
end

composite.save( "./tmp/#{collection}_left.png" )
composite.zoom(2).save( "./tmp/#{collection}_left@2x.png" )


puts "bye"

