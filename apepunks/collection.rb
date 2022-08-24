##
# see
#    https://opensea.io/collection/apepunks


COLLECTION = TokenCollection.new( 'apepunks', 1868,
                     token_base: 'https://api.apepunks.io/punk/{id}',
                     image_base: 'https://api.apepunks.io/punk/image/{id}',
                     format: '24x24',
                     source: '1200x1200',
                     offset: 1
)

