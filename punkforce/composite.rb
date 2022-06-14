#####
# to run use:
#   $ ruby punkforce/composite.rb


require_relative '../artbase'



collection = 'punkforce'


## add together a composite for all 10 1/1s
##  e.g.
#  - no.  621 - is a 1/1 with 1440x1440 dimensions
#  - no.  745 - is a 1/1 with 1440x1440
#  - no.  784 - is a 1/1 with 1440x1440
#  - no. 1079 - is a 1/1 with 1440x1440
#  - no. 1384 - is a 1/1 with 1440x1440
#  - no. 1525 - is a 1/1 with 1440x1440
#  - no. 2134 - is a 1/1 with 1440x1440
#  - no. 2140 - is a 1/1 with 1440x1440
#  - no. 2384 - is a 1/1 with 1440x1440
#  - no. 3380 - is a 1/1 with 1440x1440


ids = ['621',   '745',  '784', '1079', '1384',
       '1525', '2134', '2140', '2384', '3380',
]

composite = ImageComposite.new( 5, 2 )
ids.each do |id|
  punk = Image.read( "./#{collection}/24x24/#{id}.png" )
  composite << punk.mirror
end

composite.save( "./tmp/#{collection}_onies.png" )
composite.zoom(4).save( "./tmp/#{collection}_onies@4x.png" )



puts "bye"

