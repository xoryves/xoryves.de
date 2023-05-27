# frozen_string_literal: true

module LinkHelper
  CSS = 'text-primary border-solid border-gray-800 border-t-2 pt-2'

  def nav_link(icon, text, target)
    icon_text = "#{icon(icon)} #{text}"
  
    return "<span class=\"#{CSS}\">#{icon_text}</span>" if @item_rep&.path == target

    # apply text-bg only on hover if not parent/child
    hover = parent_of(@item)&.path == target ? '' : 'hover:'
    hover = parent_of(@item)&.path&.start_with?(target) ? '' : 'hover:' if target != '/'
    link_to(icon_text, target, {class: "#{hover}#{CSS}"})
  end
end