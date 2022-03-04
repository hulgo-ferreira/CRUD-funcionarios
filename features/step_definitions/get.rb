Dado("que o usuário consulte informações de funcionário") do
  @get_url = "http://dummy.restapiexample.com/api/v1/employees"
  #puts @teste puts irá imprimir o valor da variável teste no console que é o response retornado pela API
end

Quando("ele realizar a pesquisa") do
  @list_employee = HTTParty.get(@get_url)
end

Então("uma lista de Funcionários deve retornar") do
  #asserções p/ validar o status code 200 e messagem OK
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql "OK"
end
