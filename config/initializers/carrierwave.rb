# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'
#
#
# CarrierWave.configure do |config|
#   config.fog_credentials = {
#       :provider               => 'AWS',
#       :aws_access_key_id      => "YOUR AMAZON ACCESS KEY",
#       :aws_secret_access_key  => "YOUR AMAZON SECRET KEY",
#   }
#   config.fog_directory  = "yelpmydemo1"
# end

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["aws_access_key_id"],                        # required
    :aws_secret_access_key  => ENV["aws_secret_access_key"],                        # required
  }
  config.fog_directory  = ENV["fog_directory"]                    # required
end
