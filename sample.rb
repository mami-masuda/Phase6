def io_point_comment(point_min:,point_max:,output_file:)
  puts "#{point_min}から#{point_max}で評価を入力してください"
  point = gets.to_i
  while true
    if point < point_min || point > point_max
      puts "#{point_min}から#{point_max}で入力してください"
      point = gets.to_i
    else
      puts "コメントを入力してください"
      comment = gets
      post = "ポイント：#{point}　コメント：#{comment}"
      File.open(output_file, "a") do |file|
        file.puts(post)
      end
      break
    end
  end
end

def print_file(file_name)
  File.open(file_name, "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end

while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i

  case num
  when 1
    io_point_comment(point_min:1,point_max:5,output_file:"data.txt")
  when 2
    puts "これまでの結果"
    print_file("data.txt")
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end