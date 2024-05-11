class ClientRepositoryInterface
  def findById(id:)
    raise NotImplementedError, "Implement this method in a child class"
  end

  def save(client:)
    raise NotImplementedError, "Implement this method in a child class"
  end
end
