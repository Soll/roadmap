module CellsHelper
    
    def month_created?(cells, month)
      cells.each do |c|
        c.has_value?(month) ? true : false
      end
    end
    
    def set_month_by_number(num)
        case num
          when 1
            "Январь"  
          when 2
            "Февраль"  
          when 3
            "Март"  
          when 4
            "Апрель"  
          when 5
            "Май"  
          when 6
            "Июнь"  
          when 7
            "Июль"  
          when 8
            "Август"  
          when 9
            "Сентябрь"  
          when 10
            "Октябрь"  
          when 11
            "Ноябрь"  
          when 12
            "Декабрь"
          else
            "NA"
          end
    end
    
end
