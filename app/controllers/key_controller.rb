class KeyController < ApplicationController

  def digit
  
    (1..9).each do |number|
      if params[:query] == number.to_s
        render json: number
      end
    end

    if params[:query] == nil || params[:query] == ""
      render json: "Please pass in a query string parameter"
    end

  end

  def operator

    operators = {"add" => "+" , "subtract" => "-", "multiply" => "x", "divide" => "/", "C" => "C", "AC" => "AC", "decimal" => ".", "equals" => "=" }

    if operators.has_key? params[:query]
      render json: operators[params[:query]]
    else
      render json: "Please pass in a query string parameter"
    end

  end

end
