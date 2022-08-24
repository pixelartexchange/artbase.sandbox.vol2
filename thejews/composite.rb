require 'pixelart'


####
#  the first hundred jews ("phlipped")

punks = ImageComposite.new( 10, 10 )

(1..100).each do |id|
   punk = Image.read( "./token-i/#{id}.png" )
   punks << punk.mirror
end

punks.save( "./tmp/jews_100.png" )
punks.zoom(2).save( "./tmp/jews_100@2x.png" )



#####
#  all 5555 jews

punks = ImageComposite.new( 100, 56 )

(1..5555).each do |id|
   punk = Image.read( "./token-i/#{id}.png" )
   punks << punk
end

punks.save( "./tmp/jews-24x24.png" )


puts "bye"