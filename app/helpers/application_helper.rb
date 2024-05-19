module ApplicationHelper
  # fontawesomeのアイコンを生成するメソッド
  def icon(icon_style, icon_name)
    tag.i(class: ["fa-#{icon_style}", "fa-#{icon_name}"])
  end

  # fontawesomeの「アイコン＋文字列」を生成するメソッド
  def icon_with_text(icon_style, icon_name, text)
    tag.span(icon(icon_style, icon_name), class: 'mx-1') + tag.span(text)
  end
end
