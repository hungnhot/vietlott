class Result < ActiveRecord::Base

  def get_recently_result(limit: limit)
    Result.order('created_at DESC').limit(limit)
  end

end
