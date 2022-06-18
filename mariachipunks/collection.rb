##
# see
#     https://opensea.io/collection/mariachipunks


COLLECTION = TokenCollection.new( 'mariachipunks', 10,
                     token_base: 'opensea',
                     source: '512x512'
)


## note: not true pixel art - use different sizes for pixel 7x7, 6x6, etc.
##           need to be "redone" by hand to downsample to
##              true pixel art  (where one pixel is one pixel)
