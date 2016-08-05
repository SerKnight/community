class HomepageController < ApplicationController

  def homepage

  end

  def trips_page

  end

  def our_process

  end

  def about_us

  end

  def trip_onboard

  end

  def vietnam
    @adventure = Adventure.find_by_slug('vietnam')
  end

  def colombia
    @adventure = Adventure.find_by_slug('colombia')
  end

  def peru
    
  end

  def india

  end

  def socaltrifecta

  end

  def kyrgyzstan

  end

  def bajabus

  end

  def morocco

  end  

  def lakepowell

  end

end
