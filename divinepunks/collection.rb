##
# see
#     https://opensea.io/collection/divinepunks
#     https://etherscan.io/address/0xc2cdb10342fa908137b6a4d2ac6a8eced88b61b2#code
#


COLLECTION = TokenCollection.new( 'divinepunks', 1000,
                     token_base: 'ipfs://QmNzec7zahN1vV2pt5wBHUGnn52A6P5dTHhnrX494X3MzE/{id}.json',
                     image_base: 'ipfs://QmXXCerHyupRQ4SnAJg4RHYQcR8RpY9BhbHivdbKetZH1p/{id}.png',
                     format: '24x24',
                     source: '640x640',
                     offset: 1
)

