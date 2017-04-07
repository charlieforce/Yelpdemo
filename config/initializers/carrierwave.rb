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

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',                        # required
#     :aws_access_key_id      => ENV["AWS_ACCESS_KEY_ID"],                        # required
#     :aws_secret_access_key  => ENV["AWS_SECRET_ACCESS_KEY"],                        # required
#   }
#   config.fog_directory  = ENV["FOG_DIRECTORY"]                    # required
# end
# if Rails.env.production?
#   CarrierWave.configure do |config|
#     config.fog_credentials = {
#       # Configuration for Amazon S3
#       :provider              => 'AWS',
#       :aws_access_key_id     => ENV['AWS_ACCESS_KEY'],
#       :aws_secret_access_key => ENV['AWS_SECRET_KEY'],
#       :region                => ENV['US-WEST-2']
#     }
#     config.fog_directory     =  ENV['AWS_BUCKET']
#   end
CarrierWave.configure do |config|
 config.fog_credentials = {
     provider:              'AWS',
     aws_access_key_id:     ENV["aws_access_id"],
     aws_secret_access_key: ENV["aws_access_secret_key"],
     region: 'us-west-1'
 }
end
