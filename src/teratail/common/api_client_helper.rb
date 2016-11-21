module ApiClientHelper
  def make_request_parameter(page, limit)
    "?page=#{page}&limit=#{limit}"
  end
end
