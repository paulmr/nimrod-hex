import unittest, hex

OutputLevel = PRINT_ALL


test "Test hex string encoding and decoding":
  check hex.encode("The sun so bright it leaves no shadows") == "5468652073756e20736f20627269676874206974206c6561766573206e6f20736861646f7773"
  check "wherever you go, there you are" == hex.decode("776865726576657220796f7520676f2c20746865726520796f7520617265")

test "Test hex long string encoding and decoding":
  const longText = """Man is distinguished, not only by his reason, but by this
    singular passion from other animals, which is a lust of the mind, 
    that by a perseverance of delight in the continued and indefatigable
    generation of knowledge, exceeds the short vehemence of any carnal
    pleasure."""
  check hex.encode(longText) == "4d616e2069732064697374696e677569736865642c206e6f74206f6e6c792062792068697320726561736f6e2c2062757420627920746869730a2020202073696e67756c61722070617373696f6e2066726f6d206f7468657220616e696d616c732c2077686963682069732061206c757374206f6620746865206d696e642c200a20202020746861742062792061207065727365766572616e6365206f662064656c6967687420696e2074686520636f6e74696e75656420616e6420696e6465666174696761626c650a2020202067656e65726174696f6e206f66206b6e6f776c656467652c2065786365656473207468652073686f727420766568656d656e6365206f6620616e79206361726e616c0a20202020706c6561737572652e"
