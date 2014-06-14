class GrillMeatWorker
  include Sidekiq::Worker

  def perform(meat_id)
    meat = Meat.find_by(id: meat_id)
    meat.grill
    meat.save
  end

end
