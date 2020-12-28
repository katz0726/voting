module ApplicationHelper

  def delimited_by_comma(number)
    number.to_s(:delimited, delimiter: ',')
  end
end
