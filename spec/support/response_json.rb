module Request
  module ResponseJson
    def response_json
      JSON.parse(response.body)
    end
  end
end
