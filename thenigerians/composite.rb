require 'pixelart'


####
#  the first hundred nigerians ("phlipped")

punks = ImageComposite.new( 10, 10 )

(1..100).each do |id|
   punk = Image.read( "./24x24/#{id}.png" )
   punks << punk.mirror
end

punks.save( "./tmp/nigerians_100.png" )
punks.zoom(2).save( "./tmp/nigerians_100@2x.png" )


##
#  the 10 gold legendary nigerians
ids = [14, 792,  1020, 1747,  2221,
       3109,  4016,  4901,  5294, 5355]


punks = ImageComposite.new( 5, 2 )

ids.each do |id|
   punk = Image.read( "./24x24/#{id}.png" )
   punks << punk
end

punks.save( "./tmp/nigerians_gold.png" )
punks.zoom(4).save( "./tmp/nigerians_gold@4x.png" )


##
# the 9 community legendary nigerians
ids = [124, 2231, 2397,
       3366, 3778, 3781,
       4211, 4441, 4997]

punks = ImageComposite.new( 3, 3 )

ids.each do |id|
   punk = Image.read( "./24x24/#{id}.png" )
   punks << punk
end

punks.save( "./tmp/nigerians_community.png" )
punks.zoom(4).save( "./tmp/nigerians_community@4x.png" )



#####
#  all 5555 nigerians

punks = ImageComposite.new( 100, 56 )

(1..5555).each do |id|
   punk = Image.read( "./24x24/#{id}.png" )
   punks << punk
end

punks.save( "./tmp/nigerians-24x24.png" )


puts "bye"

