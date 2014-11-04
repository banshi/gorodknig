module ApplicationHelper
  def title(page_title)
    content_for :title, "#{I18n.t('administration')} #{" :: #{I18n.t(page_title.to_s)}" unless page_title.nil?}"
  end
end
