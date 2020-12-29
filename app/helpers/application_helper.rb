module ApplicationHelper

  def delimited_by_comma(number)
    number.to_s(:delimited, delimiter: ',')
  end

  def format_username(last_name, first_name)
    last_name + ' ' + first_name
  end
end
