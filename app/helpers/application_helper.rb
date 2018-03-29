module ApplicationHelper
  def set_categories_main
    Category.where(ancestry: nil)
  end
end
