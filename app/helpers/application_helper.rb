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
          canonical: 'https://horror-comedy.onrender.com',  # 修正が必要
          separator: '|',
          og: {
            site_name: :site,
            title: 'こみてらっ！',  # ページ固有のタイトル
            description: '怖くないB級ホラー映画紹介アプリです',  # ページ固有の説明
            type: 'website',
            url: 'https://horror-comedy.onrender.com',  # 現在のページのURLを取得
            image: image_url('komitera2.jpg'),  # ページ固有の画像
            local: 'ja-JP'
          },
          twitter: {
            card: 'summary_large_image',
            site: '@obvyamdrss',
            title: 'こみてらっ！',  # ページ固有のTwitterタイトル
            description: '怖くないB級ホラー映画紹介アプリです#ホラー映画',  # ページ固有のTwitter説明
            image: image_url('komitera2.jpg'),  # ページ固有のTwitter画像
            url: 'https://horror-comedy.onrender.com'
          }
        }
      end
      
end
