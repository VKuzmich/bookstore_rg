module BackUrl
  extend ActiveSupport::Concern

  included do
    def get_back_url
      @referer = request.referer

      return @back_url = cookies[:referer] unless valid?

      cookies[:referer] = @referer
      @back_url = @referer
    end

    private

    def valid?
      !@referer.nil? && page_refreshed?
    end

    def page_refreshed?
      @referer != request.url
    end
  end
end