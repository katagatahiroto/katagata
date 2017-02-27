CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAIVQAVTAH2A4SXQTQ',
    aws_secret_access_key: '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',
    region: 'us-east-1'
  }

  case Rails.env
    when 'production'
      config.fog_directory = 'otoku-na'
      config.asset_host = 'https://s3.amazonaws.com/otoku-na'

    when 'development'
      config.fog_directory = 'dev.dummy'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dev.dummy'

    when 'test'
      config.fog_directory = 'test.dummy'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.dummy'
  end
end
