require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                                # fog-aws を使用
  config.fog_credentials = {
    provider:              'AWS',                               # 必須
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],            # 環境変数から取得
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],        # 環境変数から取得
    region:                'ap-northeast-1'                     # S3のリージョン
  }
  config.fog_directory  = ENV['AWS_S3_BUCKET_NAME']             # バケット名
  config.fog_public     = false                                # 公開アクセス設定
  config.asset_host     = ENV['AWS_S3_ASSET_HOST']             # 必要に応じて設定
end
