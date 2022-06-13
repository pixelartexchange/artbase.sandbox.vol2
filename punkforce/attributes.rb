####
#  test (drive) attributes on archetypes
#
#  to run use:
#    $ ruby punkforce/attributes.rb


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


def make_punks( base, paths )
   punks = []
   paths.each do |path|
      img = Image.new( 24, 24 )
      img.compose!( base )
      img.compose!( Image.read( path ).mirror)
      punks << img
   end
   punks
end


MALE   =  Punk::Sheet.find_by( name: 'Ghost' )
FEMALE =  Punk::Sheet.find_by( name: 'Ghost Female' )

attributes_u = Dir.glob( './punkforce/attributes/*.png') ## universaul (m/f) attributes (e.g. mouth props))
attributes_m = Dir.glob( './punkforce/attributes/m/**/*.png')
attributes_f = Dir.glob( './punkforce/attributes/f/**/*.png')

punks = []
punks += make_punks( MALE, attributes_m+attributes_u )
punks += make_punks( FEMALE, attributes_f+attributes_u )

composite = make_composite( punks, background: '#636B96' )

composite.save( "./tmp/punkforce-attributes.png" )
composite.zoom(2).save( "./tmp/punkforce-attributes@2x.png")
composite.zoom(4).save( "./tmp/punkforce-attributes@4x.png")



puts "bye"