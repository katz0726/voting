module ApplicationHelper

  def delimited_by_comma number
    number.to_s(:delimited, delimiter: ',')
  end

  def format_username last_name, first_name
    last_name + ' ' + first_name
  end

  def time_ago datetime
    ret = ""
    ret << raw("<time datetime=\"#{datetime}\">")
    ret << time_ago_in_words(datetime)
    ret << raw("</time>")
    ret
  end
end
