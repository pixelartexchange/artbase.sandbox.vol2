##
# see
#     https://opensea.io/collection/punkforce
#     https://etherscan.io/address/0x8218b8cfdfa0e7c55a90c693a9c55e3409ee155f#code
#


COLLECTION = TokenCollection.new( 'punkforce', 3500,
                     token_base: 'ipfs://bafybeid7xkhswlyulchs4kabof67ieypkwrsyk4xjf7qxcwrfle52kegwq/{id}.json',
                     image_base: 'ipfs://bafybeiau6as5g7zojdiu4orfkgdohphyu2avejaeau3whnzqsfsmaw5a4i/{id}.png',
                     format: '24x24',
                     source: '1400x1400',
                     offset: 1
)


###
#  note:
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


##
##  errors:
##  GET /ipfs/bafybeiau6as5g7zojdiu4orfkgdohphyu2avejaeau3whnzqsfsmaw5a4i/745.png
##  uri=https://ipfs.io/ipfs/bafybeiau6as5g7zojdiu4orfkgdohphyu2avejaeau3whnzqsfsmaw5a4i/745.png
##     404 Not Found
##  listed in token metadata as:
##     ipfs://bafybeiau6as5g7zojdiu4orfkgdohphyu2avejaeau3whnzqsfsmaw5a4i/745.gif",
##   - note: it's gif!!!!!!!
##