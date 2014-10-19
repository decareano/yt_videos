require 'spec_helper'

describe Statement do
  it "uses the customer name in the header" do
    customer = double('customer')
    customer.should_receive(:name).and_return('Aslak')
    statement = Statement.new(customer)
    statement.generate.should =~ /^Statement for Aslak/
  end
end
