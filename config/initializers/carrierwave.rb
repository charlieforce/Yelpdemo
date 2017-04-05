# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'


CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "YOUR AMAZON ACCESS KEY",
      :aws_secret_access_key  => "YOUR AMAZON SECRET KEY",
  }
  config.fog_directory  = "yelpmydemo1"
end
