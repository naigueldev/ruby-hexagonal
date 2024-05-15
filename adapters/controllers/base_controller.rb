class BaseController
  def response(status:, body:)
    { status: status, body: body }
  end
end
