require 'date'
require 'holidays'

from = Date.civil(2015,1,1)
to = Date.civil(2015,12,31)

americaHolidays = Holidays.between(from, to, :us)
# puts americaHolidays

  puts h.first
  if Date.today == h.first 
    client.update("Happy " h.select)
  end

end
