# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'HelloMailCore'

  # Configure MailCore
  app.vendor_project('vendor/MailCore',
    :xcode, :scheme => "MailCore iOS", :headers_dir => '.')
  app.frameworks << "CFNetwork"
  # app.libs << "/usr/lib/libssl.dylib"
  app.libs << "/usr/lib/libiconv.dylib"
  # app.libs << "/usr/lib/libsasl2.dylib"
  # app.libs << "/usr/lib/libcrypto.dylib"  
end
