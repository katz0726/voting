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

  def show_avatar avatar
    if avatar.present?
      image_tag avatar.to_s, {class: 'user-icon'}
    else
      image_tag 'user_default_icon.png', {class: 'user-icon'}
    end
  end
end
