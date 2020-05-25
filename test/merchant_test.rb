require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_collection'

class MerchantTest < Minitest::Test

  def setup
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

  end

  def test_it_exists

    assert_instance_of Department, @customer_service
  end
