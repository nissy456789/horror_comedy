user = User.find_or_create_by!(email: "special@example.com") do |u|
  u.password = "password"
  u.password_confirmation = "password"
end

Movie.find_or_create_by(title: 'ウィリーズ・ワンダーランド') do |movie|
  movie.description = '車の修理費を稼ぐため、廃れたテーマパークでの清掃を引き受けた男に待ちける悪夢のアニマトロニクス。ニコラス・ケイジが遊園地の人形と死闘を繰り広げるホラー・アクション！'
  movie.avatar = File.open(Rails.root.join('app/assets/images/willyswonderland.jpg'))
  movie.surprise_level = '3'
  movie.gore_level = '2'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ロンドンゾンビ紀行') do |movie|
  movie.description = 'ロンドンに暮らすお気楽なボンクラ兄弟。大好きな祖父が入居している老人ホームが閉鎖の危機にあると知り、ひと働きして助けてあげようと仲間と銀行強盗を企てる。だが、街にはいつの間にかゾンビが溢れており、老人ホームでも入居者たちが迫りくるゾンビを相手に奮闘していた。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/londonzombiposter.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = '3'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: '黄龍の村') do |movie|
  movie.description = 'これ、村の決まりやから。キャンプ場への道中携帯も繋がらない山中で車がパンクし助けを求めて迷い歩く若者達がたどり着いた「切龍村」その近妙な村を舞台に狂気の集団と若者たちの想像を絶する惨劇が勃発するスリラーホラー'
  movie.avatar = File.open(Rails.root.join('app/assets/images/kiryuunomura.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '1'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'キャビン') do |movie|
  movie.description = '小さな山小屋の入り口は、世界の破滅につながっていたー 夏休みに山奥へとバカンスに出かけた大学生５人。古ぼけた山小屋の地下で見つけた謎の日記を読んだとき、何者かが目覚め、一人、また一人と殺されていく。しかしその裏には、彼らが「定番のシナリオ通り」死んでいくよう、全てをコントロールしている謎の組織があった。その組織の目的は？若者たちの運命は？その先には、世界を揺るがす秘密が隠されていた。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/CABIN.jpg'))
  movie.surprise_level = '3'
  movie.gore_level = '4'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'タッカーとデイル 史上最悪にツイてないヤツら') do |movie|
  movie.description = 'グロめです。仲良し中年2人組・タッカーとデイルは、念願だった別荘で休暇を過ごすため森へとやってくる。だが2人は近所でキャンプをしていた生意気な大学生グループに殺人鬼と勘違いされてしまう。さらに川で溺れかけた女子大生を助けたことが一層の誤解を招き…。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/takkar&dail.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = '5'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'キラージーンズ') do |movie|
  movie.description = 'とあるアパレルメーカーが、誰にでもフィットする最新のジーンズを開発。従業員が発売前夜にキャンペーンの準備に追われる中、ジーンズが勝手に動き出して人間たちを血祭りに上げていく……。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/killer_jeans.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '2'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ショーン・オブ・ザ・デッド') do |movie|
  movie.description = '家電量販店で働くショーンの楽しみは、同居している親友・エドとのゲームとパブでのビール。恋人・リズにふられて飲みすぎた翌朝、ショーンが目を覚ますと、街はゾンビであふれ返っていた。愛するリズと母親を救うため、無気力男・ショーンが立ち上がる。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/shown_of_the_dead.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '1'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'マリグナント 狂暴な悪夢 ') do |movie|
  movie.description = 'ある日を境に、目の前で恐ろしい殺人を目撃するという「悪夢体験」に苛まれはじめるマディソン。予測不能な素早い動きと超人的能力で、人々を殺していく漆黒の殺人鬼。彼女が夢の中で見た殺人の数々は、現実世界でも起きてしまう――。 殺人が起きる度、マディソンはリアルな幻覚かのように殺人現場を疑似体験し、少しずつ自身の秘められた過去に導かれていく。そして、ついにその邪悪な手がマディソンの元へ届くとき、その“狂暴な悪夢”の正体＝G が明らかに…!?怖い雰囲気ですが、(アクション映画だと思って観てもらえたら大丈夫です)。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/malignant.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = '2'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ゾンビーワールドへようこそ') do |movie|
  movie.description = '高校生でボーイスカウトのベン、カーター、オギーはクラブで女の子と遊びたくて仕方がない。ある日、キャンプを抜け出してパーティー会場へ行く途中、なんとゾンビ化した住人たちが襲ってきた!間一髪のところを美人ウエイトレスに助けられた3人は、ボーイスカウトで 身につけた様々なワザを駆使して、一致団結しようとするのだが…。(下ネタ多めです。)'
  movie.avatar = File.open(Rails.root.join('app/assets/images/welcome_zombie.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '4'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ゾンビーバー') do |movie|
  movie.description = '田舎道を走る一台のトラック、いい加減なおしゃべり運転のせいで、積み荷の汚染廃棄物が、かわいいビーバーの住む湖にドボン！そんなビーバーたちの湖の近くに、男子禁制の女子会キャンプを楽しむためにやってきた仲良し3人組（メアリー、ゾーイ、ジェン）。一晩かけて恋愛話やSEXトークを楽しむ3人、しかし彼女たちの彼氏や元彼（サム、トミー、バック）が突然小屋に乱入してきてセックスとお酒で大混乱。そんな中、ジェンがバスタブで凶暴なビーバーに遭遇！トミーの徹底的な撲殺で事なきを得たのだが、翌日、捨てたはずのビーバーの死体がどこにもない。しかも、逃げたような血の足跡が・・・。今、極限の恐怖が彼らを襲う！！（笑）'
  movie.avatar = File.open(Rails.root.join('app/assets/images/zobieebar.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '4'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: '温泉シャーク') do |movie|
  movie.description = '⼈気の温泉地に突如現れた脅威︕温泉地 vs 古代ザメ ⼈類との戦いが今、始まろうとするのであった。市⻑の万巻が主導する複合型巨⼤観光施設の建設が進む S 県暑海（あつみ）市では、温泉客が忽然と姿を消す連続失踪事件が発⽣していた。しかも被害者はその後、海でサメに襲われた遺体として発⾒されるのであった。捜査に乗り出した警察署⻑、束（つか）と海洋⽣物学博⼠の巨勢（こせ）は、太古の昔から蘇った獰猛なサメが暑海各地の温泉を⾃由に⾏き来し、⼈々を襲っているという驚愕の事実を突き⽌めるのだが･･･'
  movie.avatar = File.open(Rails.root.join('app/assets/images/onsen.shark.jpg'))
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'コカインベア') do |movie|
  movie.description = '(グロいけど面白いです)麻薬密輸人のアンドリュー・カーター・ソーントン2世がFBIに追われ、飛行機からコカインが入ったバッグを投げ捨てた。しかし、こともあろうに巨大なクマが、その白い粉を食べてしまった。偶然にもジョージア州の森に集った刑事、ギャング、森林警備隊、観光客たちが、大量のコカインを食べて暴れ回る“頂点捕食者”と遭遇したとき、いまだかつてない惨劇が起きる!'
  movie.avatar = File.open(Rails.root.join('app/assets/images/cocain_bear_.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = '4'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'リトル・モンスターズ') do |movie|
  movie.description = '恋人に浮気をされ、姉の家に転がり込んださえないミュージシャン・デヴィッド。甥が通う幼稚園の先生・キャロラインに一目惚れし、動物園への遠足に同行することに。子供たちが大いに盛り上がるなか、突然現れたゾンビたちが彼らに迫ろうとしていた。(子供は無事です)'
  movie.avatar = File.open(Rails.root.join('app/assets/images/little_monsters.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '3'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ハッピー・デス・デイ') do |movie|
  movie.description = 'ビッチが誕生日に何度も殺されまくる?自己中でイケイケな女子大生が、“殺される誕生日”を何度もくり返しながら殺人鬼の謎に迫っていくタイムループ型学園ホラー!無名のキャスト&監督にもかかわらず大作『ブレードランナー2049』を押さえ、全米初登場No.1を獲得!'
  movie.avatar = File.open(Rails.root.join('app/assets/images/happy_death_day.jpg'))
  movie.surprise_level = '5'
  movie.gore_level = '1'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ヴィーガンズ・ハム') do |movie|
  movie.description = 'ヴィンセントとソフィーは結婚30年。すっかり倦怠期に陥り、家業である肉屋の経営も厳しい。ある日、店がヴィーガンの活動家たちに荒らされ、ヴィンセントが犯人の一人を殺してしまう。死体処理に困ったヴィンセントはハムに加工するが、ソフィーの勘違いで店頭に出すと図らずも人気商品に……。戦慄の人間狩りと夫婦愛を両立させた不謹慎な笑いが満載。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/viigans_hum.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = 1
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'サンドウィッチ') do |movie|
  movie.description = 'アホでさえないコンビが森で射撃ごっこしてて女性を撃ち殺してしまい、秒で呪われる短編ホラーコメディ(18分)。SAMANSAというアプリで観れます。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/sandwich.jpg'))
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ゾンビランド') do |movie|
  movie.description = 'ゾンビパンデミックが広がる世界で、生存者の青年コロンバスは「生存のルール」を守りながら旅を続け、個性的な仲間たち（タラハシー、ウィチタ、リトルロック）と出会います。彼らは友情を深めつつ、ゾンビと戦いながら楽園を目指します。笑いとアクション満載のホラーコメディです'
  movie.avatar = File.open(Rails.root.join('app/assets/images/zombieland.jpg'))
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'カメラを止めるな！') do |movie|
  movie.description = 'とある自主映画の撮影隊が山奥の廃墟でゾンビ映画を撮影していた。本物を求める監督は中々OKを出さずテイクは42テイクに達する。そんな中、撮影隊に本物のゾンビが襲いかかる!大喜びで撮影を続ける監督、次々とゾンビ化していく撮影隊の面々。映画史をぬり変えるワンカットゾンビサバイバル！……を撮ったヤツらの話。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/kamera_nonstop!.jpg'))
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'デストイレ') do |movie|
  movie.description = 'ベトナム戦争中、従軍していたブレットのもとに弟がトイレで変死したとの訃報が舞い込む。終戦後に帰国したブレットは、弟が残した家の調査を始める。するとトイレに狂暴な悪魔が取りついていることがわかり、彼はディングルベリー神父に悪魔祓いを依頼する。54分の映画なのに途中休憩があります。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/death_toilet.jpg'))
  movie.surprise_level = '0'
  movie.gore_level = '1'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'キラー・ナマケモノ') do |movie|
  movie.description = '大学生エミリーがソロリティ会長選で注目を集めるために飼ったナマケモノが、実は凶暴な殺人鬼だった。次々と仲間が襲われる中、エミリーは恐怖と混乱の中で生き残りを図る。可愛いナマケモノが殺人鬼になる斬新なホラーコメディ。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/killarr_namakemono.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '4'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'ファイブ・ナイツ・アット・フレディーズ') do |movie|
  movie.description = '弟の失踪事件に苦しむマイクは、廃墟のピザ店「フレディ・ファズベアーズ・ピザ」で夜間警備の仕事を始める。かつて子ども失踪事件の舞台となったその店で、マスコットが凶暴化し彼に襲いかかる。単なる警備が命がけの恐怖に変わっていく。グロく無いです。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/5naitu.at.huredli.jpg'))
  movie.surprise_level = '2'
  movie.gore_level = '2'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: '戦慄怪奇ワールド・コワすぎ！') do |movie|
  movie.description = '『貞子ｖｓ伽椰子』などの白石晃士監督による新感覚ホラーシリーズの集大成となる長編劇場映画。怪奇系ドキュメンタリーを作ってきたプロデューサー・工藤の下に、３人の若者が廃墟で撮影した映像が送られてくる。そこには正体不明の赤い女が映っていた。'
  movie.avatar = File.open(Rails.root.join('app/assets/images/kowasugi.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = '0'
  movie.user_id = user.id
end

Movie.find_or_create_by(title: 'それがいる森') do |movie|
  movie.description = '田舎町で農業を営む相葉くんのもとに、別れた妻と暮らしていた息子の一也が突然訪ねてくる。しばらくの間一緒に暮らすことになった2人だったが、時を同じくして近くの森では怪奇現象が立て続けに起き、町でも住民の不審死や失踪事件が繰り返されていた。そんなある日、淳一と一也は得体の知れない“それ”を目撃してしまったことで、怪奇現象に巻き込まれていく。(ネタバレ：それは宇宙人だよ)'
  movie.avatar = File.open(Rails.root.join('app/assets/images/soregairumori.jpg'))
  movie.surprise_level = '1'
  movie.gore_level = '1'
  movie.user_id = user.id
end
