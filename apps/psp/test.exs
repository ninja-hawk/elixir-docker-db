defmodule FileReader do
  def read_numbers(file_path) do
    { :ok, content } = File.read(file_path)
    String.split(content, " ", trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end

# テキストファイルのパス
file_path = "numbers.txt"

# テキストファイルを読み込み、各数字を取得
numbers = FileReader.read_numbers(file_path)
IO.inspect(numbers)
