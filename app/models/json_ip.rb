class JsonIp
  def ip
    response["ip"]
  end

  def response
    HTTP.get("https://jsonip.org").parse(:json)
  end
end
