Movie.find_or_create_by(title: 'ウィリーズ・ワンダーランド') do |movie|
  movie.description = '車の修理費を稼ぐため、廃れたテーマパークでの清掃を引き受けた男に待ちける悪夢のアニマトロニクス。ニコラス・ケイジが遊園地の人形と死闘を繰り広げるホラー・アクション！'
  movie.avatar = File.open(Rails.root.join('app/assets/images/willyswonderland.jpg'))
end

Movie.find_or_create_by(title: 'ロンドンゾンビ紀行') do |movie|
  movie.description = 'ロンドンに暮らすお気楽なボンクラ兄弟。大好きな祖父が入居している老人ホームが閉鎖の危機にあると知り、ひと働きして助けてあげようと仲間と銀行強盗を企てる。だが、街にはいつの間にかゾンビが溢れており、老人ホームでも入居者たちが迫りくるゾンビを相手に奮闘していた。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/londonzombiposter.jpg'))
end

Movie.find_or_create_by(title: '黄龍の村') do |movie|
  movie.description = 'これ、村の決まりやから。キャンプ場への道中携帯も繋がらない山中で車がパンクし助けを求めて迷い歩く若者達がたどり着いた「切龍村」その近妙な村を舞台に狂気の集団と若者たちの想像を絶する惨劇が勃発するスリラーホラー'
  movie.avatar = File.open(Rails.root.join('app/assets/images/kiryuunomura.jpg'))
end