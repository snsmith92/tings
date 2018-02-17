class AdPresenter

  def initialize(ad)
    @ad = ad 
  end 

  def time_created
    @ad.created_at.strftime("%d %b, %Y")
  end 

end