module ApiClientHelper

  def make_request_parameter(page,limit)
    "?page=#{page.to_s}&limit=#{limit.to_s}"
  end

end
