# Users
thehuff = User.create(name: "thehuff")

User.create(name: "dbowie")
User.create(name: "ehemingway")

# Cards & Card Sides
kana = [
  ["a", "あ", "ア"],
  ["i", "い", "イ"],
  ["u", "う", "ウ"],
  ["e", "え", "エ"],
  ["o", "お", "オ"],
  ["ka", "か", "カ"],
  ["ki", "き", "キ"],
  ["ku", "く", "ク"],
  ["ke", "け", "ケ"],
  ["ko", "こ", "コ"],
  ["sa", "さ", "サ"],
  ["shi", "し", "シ"],
  ["su", "す", "ス"],
  ["se", "せ", "セ"],
  ["so", "そ", "ソ"],
  ["ta", "た", "タ"],
  ["chi", "ち", "チ"],
  ["tsu", "つ", "ツ"],
  ["te", "て", "テ"],
  ["to", "と", "ト"],
  ["na", "な", "ナ"],
  ["ni", "に", "ニ"],
  ["nu", "ぬ", "ヌ"],
  ["ne", "ね", "ネ"],
  ["no", "の", "ノ"],
  ["ha", "は", "ハ"],
  ["hi", "ひ", "ヒ"],
  ["hu", "ふ", "フ"],
  ["he", "へ", "ヘ"],
  ["ho", "ほ", "ホ"],
  ["ma", "ま", "マ"],
  ["mi", "み", "ミ"],
  ["mu", "む", "ム"],
  ["me", "め", "メ"],
  ["mo", "も", "モ"],
  ["ya", "や", "ヤ"],
  ["yu", "ゆ", "ユ"],
  ["yo", "よ", "ヨ"],
  ["ra", "ら", "ラ"],
  ["ri", "り", "リ"],
  ["ru", "る", "ル"],
  ["re", "れ", "レ"],
  ["ro", "ろ", "ロ"],
  ["wa", "わ", "ワ"],
  ["wo", "を", "ヲ"],
  ["n", "ん", "ン"],
]

kana.each do |k|
  card = Card.create(user: thehuff, card_sides:[
    CardSide.create(title: "romanji", text: k[0]),
    CardSide.create(title: "hiragana", text: k[1]),
    CardSide.create(title: "katagana", text: k[2]),
  ])
end

# Study Sessions & Study Session Answers
5.times do |i|
  study_session = StudySession.create(user: thehuff)
  CardSide.all.each_with_index do |cs, j|
    StudySessionAnswer.create(card_side_id: cs.id,
      study_session: study_session,
      is_right: ((i + j) % 7 != 0),
    )
  end
end

# Tags
# TODO revisit when making tags with polymorphic parents
10.times { Tag.create(user: thehuff) }
