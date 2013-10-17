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

    # if params[:query] == "1"
    #   render json: 1
    # elsif params[:query] == "2"
    #   render json: 2
    # elsif params[:query] == "3"
    #   render json: 3
    # elsif params[:query] == "4"
    #   render json: 4
    # elsif params[:query] == "5"
    #   render json: 5
    # elsif params[:query] == "6"
    #   render json: 6
    # elsif params[:query] == "7"
    #   render json: 7
    # elsif params[:query] == "8"
    #   render json: 8
    # elsif params[:query] == "9"
    #   render json: 9
    # elsif params[:query] == "" || params[:query] == nil
    #   render json: "Please pass in a query string parameter"
    # end

  end

  def operator

    if params[:query] == "add"
      render json: "+"
    elsif params[:query] == "subtract"
      render json: "-"
    elsif params[:query] == "multiply"
      render json: "x"
    elsif params[:query] == "divide"
      render json: "/"
    elsif params[:query] == "C"
      render json: "C"
    elsif params[:query] == "AC"
      render json: "AC"
    elsif params[:query] == "equals"
      render json: "="
    elsif params[:query] == "decimal"
      render json: "."
    elsif params[:query] == "" || params[:query] == nil
      render json: "Please pass in a query string parameter"
    end

  end

end
