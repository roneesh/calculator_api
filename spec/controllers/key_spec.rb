require 'spec_helper'

describe KeyController do
  
  describe 'GET digit' do

    it "has a 200 status code" do
      get :digit
      expect(response.status).to eq(200)
    end

    it "returns an error message when not passed with a param" do
      expected = "Please pass in a query string parameter"
      get :digit
      expect(response.body).to eq expected
    end

    it "returns the digit when a digit is passed in as a param" do
      digits = (1..9)
      digits.each do |digit|
        get :digit, {:query => digit}
        expect(response.body).to eq digit.to_json
      end
    end
 
  end

  describe 'GET operator' do

    it "has a 200 status code" do
      get :operator
      expect(response.status).to eq(200)
    end

    it "returns an error message when not passed with a param" do
      expected = "Please pass in a query string parameter"
      get :operator
      expect(response.body).to eq expected
    end

    it "returns an operator when a character is passed in as a param" do
      operators = {"add" => "+" , "subtract" => "-", "multiply" => "x", "divide" => "/", "C" => "C", "AC" => "AC", "decimal" => ".", "equals" => "=" }
      operators.each_key do |key|
        get :operator, {query: key}
        expect(response.status).to eq(200)
        expect(response.body).to eq operators[key]
      end 
    end 

    it "returns a . if 'decimal' is passed in as a param" do
      get :operator, {query: "decimal"}
      expect(response.status).to eq(200)
      expect(response.body).to eq "."
    end

  end

end

