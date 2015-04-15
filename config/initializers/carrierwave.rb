CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV['AWS_BUCKET']
  config.aws_acl    = :public_read
  config.asset_host = 'https://s3.amazonaws.com/textmebooks'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    access_key_id:     ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  }

   logger.debug 'What the heck is going on!!!?'
   logger.debug ENV.to_h.to_yaml

end