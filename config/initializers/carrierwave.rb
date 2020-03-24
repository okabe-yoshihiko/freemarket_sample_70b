if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: 'ap-northeast-1'
    }
    # S3のバケット名
    config.fog_directory  = 'freemarket70b'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/freemarket70b'
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end
end