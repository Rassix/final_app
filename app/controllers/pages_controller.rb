class PagesController < ApplicationController
  
  def home
  end

  def contact
	@title = "Kontakt"
  end
  
  def about
	@title = "Firmast"
  end
  
end
