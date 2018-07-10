module ApplicationHelper

   def sortablehightolow(column, title = nil)
    title ||= "Engagement (High - Low)"
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "desc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
   end

   def sortablelowtohigh(column, title = nil)
  title ||= "Engagement (Low to High)"
  css_class = column == sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "desc" ? "asc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end

end
