# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

  Paperclip.options[:command_path] = "C:\Program Files\ImageMagick-7.0.1-Q16\convert.exe"
  Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin'