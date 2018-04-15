class HomepageController < ApplicationController
  layout 'consulting_layout', :only => [:consulting]
  # created consulting_layout in /layouts || references ^ controller method name

  # layout :consulting_layout, only:  []
                                 # tip ^ this : is same syntax. ( does the same thing )

  def homepage

  end

  def thrivepass

  end

  def tourism_collective

  end

  def rio_samana

  end

  def baja_escape

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

  def giveandsurf

  end

  def consulting
    # changed the name from partners
    # also had to update the routes.rb file 
    # to that I know to match the url (/consulting) with a certain controller#action_name
  end

end
