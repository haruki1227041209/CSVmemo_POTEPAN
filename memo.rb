require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

puts "拡張子を除いたファイルを入力してください"
file_type = gets.chomp
puts "メモしたい内容を記入してください"
puts "完了したらCtrl + Dをおします"

if memo_type == 1
  text_type = $stdin.readlines
  data = [text_type]
  CSV.open(file_type + ".csv",'w') do |csv|
   csv << data
  end
elsif memo_type == 2
  text_type = $stdin.readlines
  data = [text_type]
  CSV.open(file_type + ".csv",'a') do |csv|
   csv << data
  end
end

    