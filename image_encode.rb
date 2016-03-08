require 'zxing'

require_relative 'imagestream/imagestream'

qrcode_in = ARGV[0]
image_in = ARGV[1]
image_out = ARGV[2]

txt = ZXing.decode qrcode_in
puts txt

stream = ImageStream.new(image_in)
stream.write_magic
stream.write_string(txt)
stream.save(image_out)
