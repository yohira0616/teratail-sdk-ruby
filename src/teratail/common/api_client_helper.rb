class ApiClientHelper

  def self.make_request_parameter(page,limit)
    request_param= ""
    request_param += "?page="
    request_param += limit.to_s
    request_param += "&limit="
    request_param += page.to_s
  end

end
