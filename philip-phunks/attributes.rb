####
#  test (drive) attributes on archetypes
#
#  to run use:
#    $ ruby philip-phunks/attributes.rb



require 'punks'

def make_composite( punks, cols: 5, background: nil )
  total = punks.size
  rows =  total / cols
  rows += 1    if total % cols != 0

  puts "  total: #{total},  #{cols}x#{rows} (cols x rows)"

  composite = ImageComposite.new( cols, rows, width: 24,
                                              height: 24,
                                              background: background )

  punks.each do |punk|
     composite << punk
  end
  composite
end


def make_punks( base, attributes )
   punks = []
   attributes.each do |attribute|
      img = Image.new( 24, 24 )
      img.compose!( base )
      img.compose!( attribute )
      punks << img.mirror
   end
   punks
end


MALE   =  Punk::Sheet.find_by( name: 'Ghost' )

headbands = %w[
   brazil
   canada
   france
   germany
   ireland
   italy
   japan
   mexico
   nigeria
   pride
]

attributes = headbands.map {|headband| Image.read( "./philip-phunks/attributes/headband-#{headband}.png" ) }


punks = []
punks += make_punks( MALE, attributes )

composite = make_composite( punks, background: '#636B96' )

composite.save( "./tmp/headband-attributes.png" )
composite.zoom(2).save( "./tmp/headband-attributes@2x.png")
composite.zoom(4).save( "./tmp/headband-attributes@4x.png")



puts "bye"