require 'mkmf'

$CFLAGS << ' -Wall'
#$CFLAGS << ' -Werror'
$CFLAGS << ' -D_FILE_OFFSET_BITS=64'
$CFLAGS << ' -DFUSE_USE_VERSION=26'


if have_func("rb_errinfo") 
    puts "Have rb_errinfo"
end

if have_library('fuse')
  create_makefile('rfuse/rfuse')
else
  puts "No FUSE install available"
end
