defmodule LinkedList do
  defmodule Node do
    defstruct value: nil, next: nil
  end

  # 新しいノードを先頭に追加する
  def prepend(head, value) do
    %Node{value: value, next: head}
  end

  # リストの全要素を表示する
  def display(nil), do: IO.puts("nil")
  def display(node) do
    IO.puts(node.value)
    display(node.next)
  end
end

# 使用例
list = LinkedList.prepend(nil, 3)
list = LinkedList.prepend(list, 2)
list = LinkedList.prepend(list, 1)
LinkedList.display(list)

list2 = LinkedList.prepend(nil, 3)
list2 = LinkedList.prepend(list2, 2)
list2 = LinkedList.prepend(list2, 1)
LinkedList.display(list2)
