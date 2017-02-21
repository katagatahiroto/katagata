CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AKIAJPQP6XZKDINATPEA'],
    aws_secret_access_key: ENV['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'],
    region: 'us-east-1'
  }


    case Rails.env
    when 'development'
        config.fog_directory  = 'otoku-na'
        config.asset_host = 'https://s3.amazonaws.com/otoku-na'
    when 'production'
        config.fog_directory  = 'otoku-na'
        config.asset_host = 'https://s3.amazonaws.com/otoku-na'
    end
end
