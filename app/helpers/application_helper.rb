# frozen_string_literal: true

module ApplicationHelper
    def default_meta_tags
        {
          site: 'こみてらっ！',
          title: 'B級ホラー映画',
          reverse: true,
          charset: 'utf-8',
          description: '初心者向けの笑えるホラー映画を紹介しています',
          keywords: 'ホラー,恐怖,初心者,スリル',
          canonical: 'https://xn--28jvb3dvb.com',
          separator: '|',
          og: {
            site_name: :site,
            title: 'こみてらっ！',
            description: '怖くないB級ホラー映画紹介アプリです',
            type: 'website',
            url: 'https://xn--28jvb3dvb.com',
            image: image_url('komitera2.jpg'),
            local: 'ja-JP'
          },
          twitter: {
            card: 'summary_large_image',
            site: '@obvyamdrss',
            title: 'こみてらっ！',
            description: '怖くないB級ホラー映画紹介アプリです#ホラー映画',
            image: image_url('komitera2.jpg'),
            url: 'https://xn--28jvb3dvb.com'
          }
        }
      end
      
end
