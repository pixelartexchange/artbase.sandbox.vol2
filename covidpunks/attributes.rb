####
#  test (drive) attributes on archetypes
#
#  to run use:
#    $ ruby covidpunks/attributes.rb



require 'punks'

def make_composite( punks, cols: 10, background: nil )
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
      punks << img
   end
   punks
end


MALE   =  Punk::Sheet.find_by( name: 'Male Yellow' )
FEMALE =  Punk::Sheet.find_by( name: 'Female Pink' )


masks = %w[
   white
   yellow
   pink
   rainbow
   blue
   black

   cloth_white
   cloth_green
   cloth_orange
   cloth_red
   cloth_brown
   cloth_purple
   cloth_blue

   kn-95
   kn-95_yellow
   kn-95_black
]

attributes_m = masks.map {|mask| Image.read( "./covidpunks/attributes/m/#{mask}.png" ) }
attributes_f = masks.map {|mask| Image.read( "./covidpunks/attributes/f/#{mask}.png" ) }


EMPTY = Image.new( 24, 24 )

punks = []
punks += make_punks( MALE, attributes_m )
punks += [EMPTY, EMPTY, EMPTY, EMPTY]
punks += make_punks( FEMALE, attributes_f )

composite = make_composite( punks, background: '#636B96' )

composite.save( "./tmp/covidpunks-attributes.png" )
composite.zoom(2).save( "./tmp/covidpunks-attributes@2x.png")
composite.zoom(4).save( "./tmp/covidpunks-attributes@4x.png")



puts "bye"