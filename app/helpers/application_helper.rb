module ApplicationHelper
    
    def fillYearsCombo
        
        finalString = ""
        sel = ""
        
        currentYear = Time.current.year
        lastYear = currentYear - 2
        
        while (currentYear >= lastYear) do
          if (params[:selectedYear] == currentYear.to_s)
            sel = " selected"
          else
            sel = ""
          end
          finalString += "<option#{sel}>#{currentYear}</option>"
          currentYear -= 1
        end 
        
        finalString.html_safe
    end
end
