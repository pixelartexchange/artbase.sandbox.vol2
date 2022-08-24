require 'pixelart'



names = %w[
  ape-male
  ape_red-male
  ape_light-male

  ape-female
  ape_red-female
  ape_light-female

  ape_zombie-male
  ape_alien-male
  ape_gold-male
]


apes = ImageComposite.new( 3, 3, background: '#6A8494' )

names.each do |name|
  ape = Image.read( "./attributes/#{name}.png" )
  apes << ape
end


apes.save( "./tmp/apes.png" )
apes.zoom(8).save( "./tmp/apes@8x.png" )

puts "bye"