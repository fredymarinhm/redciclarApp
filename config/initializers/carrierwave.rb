CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_porvider = 'fog/amazon'
    config.fog_credentials = {
        provider:              'AWS',
        aws_access_key_id:     'AKIAJE4XJSYIBHE3XIXA',
        aws_secret_access_key: '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',
        region:                'us-east-1',
    }
    config.fog_directory  = 'redciclar'
end