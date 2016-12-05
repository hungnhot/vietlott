class ResultsController < ApplicationController

  def index

  end

  def get_result
    data = []
    result = []

    Result.all.each do |row|
      data << row.result.split(",").map(&:to_i)
    end

    data = data.flatten

    (1..45).each do |i|
      result << [i, data.count(i)]
    end

    render json: {result: result}
  end

end
