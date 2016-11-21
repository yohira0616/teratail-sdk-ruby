module ApiClientHelper
  def make_request_parameter(page, limit)
    "?page=#{page}&limit=#{limit}"
  end

  def make_request_header(access_token)
    if access_token != ''
      {
        'Authorization' => "Bearer #{access_token}"
      }
    else
      {}
    end
  end
end
