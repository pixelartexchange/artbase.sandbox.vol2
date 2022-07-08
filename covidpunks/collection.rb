##
# see  https://www.covidpunks.com
#      https://opensea.io/collection/covidpunksnft
#      https://www.twitter.com/COVIDPunksNFT
#      https://etherscan.io/address/0xe4cfae3aa41115cb94cff39bb5dbae8bd0ea9d41
#


COLLECTION = TokenCollection.new( 'covidpunks', 10000,
                     token_base: 'https://gateway.pinata.cloud/ipfs/QmbbPdpdob4Hh5Dj7csBg7tYZMR27fgKjYPEy7zHhATpv5/{id}.json',
                     format: '24x24',
                     source: '480x480',
)

