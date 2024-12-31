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

Movie.find_or_create_by(title: 'キャビン') do |movie|
  movie.description = '小さな山小屋の入り口は、世界の破滅につながっていたー 夏休みに山奥へとバカンスに出かけた大学生５人。古ぼけた山小屋の地下で見つけた謎の日記を読んだとき、何者かが目覚め、一人、また一人と殺されていく。しかしその裏には、彼らが「定番のシナリオ通り」死んでいくよう、全てをコントロールしている謎の組織があった。その組織の目的は？若者たちの運命は？その先には、世界を揺るがす秘密が隠されていた。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/CABIN.jpg'))
end

Movie.find_or_create_by(title: 'タッカーとデイル 史上最悪にツイてないヤツら') do |movie|
  movie.description = 'グロめです。仲良し中年2人組・タッカーとデイルは、念願だった別荘で休暇を過ごすため森へとやってくる。だが2人は近所でキャンプをしていた生意気な大学生グループに殺人鬼と勘違いされてしまう。さらに川で溺れかけた女子大生を助けたことが一層の誤解を招き…。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/takkar&dail.jpg'))
end

Movie.find_or_create_by(title: 'キラージーンズ') do |movie|
  movie.description = 'とあるアパレルメーカーが、誰にでもフィットする最新のジーンズを開発。従業員が発売前夜にキャンペーンの準備に追われる中、ジーンズが勝手に動き出して人間たちを血祭りに上げていく……。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/killer_jeans.jpg'))
end

Movie.find_or_create_by(title: 'ショーン・オブ・ザ・デッド') do |movie|
  movie.description = '家電量販店で働くショーンの楽しみは、同居している親友・エドとのゲームとパブでのビール。恋人・リズにふられて飲みすぎた翌朝、ショーンが目を覚ますと、街はゾンビであふれ返っていた。愛するリズと母親を救うため、無気力男・ショーンが立ち上がる。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/shown_of_the_dead.jpg'))
end
