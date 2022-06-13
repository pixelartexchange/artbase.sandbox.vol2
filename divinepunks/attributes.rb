####
#  test (drive) attributes on archetypes
#
#  to run use:
#    $ ruby divinepunks/attributes.rb


require 'pixelart'

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


def make_punks( base, paths, hair: nil, hair_color: nil )
   punks = []
   paths.each do |path|
      basename = File.basename( path, File.extname( path ))

      ## skip hair style with diffent color (to avoid overload)
      next if hair_color && basename.start_with?( 'hair' ) &&
                            basename.index( hair_color ).nil?

      img = Image.new( 24, 24 )
      img.compose!( base )

      attribute = Image.read( path )

      if basename.start_with?( 'hair') ||
         basename.start_with?( 'clothes-I-cloak')
         img.compose!( attribute )   ## skip/overwrite passed in hair
      elsif basename.start_with?( 'tattoo' ) ||
            basename.start_with?( 'facepaint' ) ||
            basename.start_with?( 'mask' ) ||
            basename.start_with?( 'eyes')
         img.compose!( attribute )
         img.compose!( hair )   if hair
      else
         img.compose!( hair )   if hair
         img.compose!( attribute )
      end

      punks << img
   end
   punks
end


BASE1 = Image.read( './divinepunks/attributes/base1.png' )
BASE3 = Image.read( './divinepunks/attributes/base3.png' )


SHORT_HAIR_RED    = Image.read( './divinepunks/attributes/hair-I-short_hair-red.png' )
WET_HAIR_BLONDE  = Image.read( './divinepunks/attributes/hair-I-wet_hair-blonde.png' )



attributes = Dir.glob( './divinepunks/attributes/**/*.png')
attributes = attributes.select { |path| !File.basename( path ).start_with?( 'base' ) }


punks = []
# punks += make_punks( BASE1, attributes )
# punks += make_punks( BASE3, attributes )

EMPTY = Image.new( 24, 24 )

punks += make_punks( BASE1, attributes, hair: SHORT_HAIR_RED,
                                        hair_color: 'red'  )
punks += make_punks( BASE3, attributes, hair: WET_HAIR_BLONDE,
                                        hair_color: 'blonde' )



composite = make_composite( punks, cols: 10, background: '#636B96' )

composite.save( "./tmp/divinepunks-attributes.png" )
composite.zoom(2).save( "./tmp/divinepunks-attributes@2x.png")
composite.zoom(4).save( "./tmp/divinepunks-attributes@4x.png")



puts "bye"