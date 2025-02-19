# frozen_string_literal: true

module ApplicationHelper
  def default_meta_tags
    {
      site: 'Live Fes',
      title: '音楽ライブ・フェスの余韻を共有できるサービス',
      reverse: true,
      charset: 'utf-8',
      description: 'Live Fesでは、音楽ライブやフェスの余韻や喪失感を参加者同士で共通し、感想や思い出を語り合うことができます。',
      keywords: '音楽,ライブ,フェス,余韻,喪失感,共有',
      canonical: 'https://horror-comedy.onrender.com',
      separator: '|',
      og: {
      site_name: 'Live Fes',
      title: '音楽ライブ・フェスの余韻を共有できるサービス',
      description: 'Live Fesでは、音楽ライブやフェスの余韻や喪失感を参加者同士で共通し、感想や思い出を語り合うことができます。',
      type: 'website',
      canonical: 'https://horror-comedy.onrender.com',
      image: image_url('komitera.jpg'),
      locale: 'ja_JP'
    },
      twitter: {
        card: 'summary_large_image',
        site: '@obvyamdrss',
        image: image_url('komitera.jpg')
        }
        }
      end   
end
