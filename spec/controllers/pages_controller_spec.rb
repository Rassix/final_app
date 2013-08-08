require 'spec_helper'

describe PagesController do
render_views #selleparast et kustutasime failid ära ennem rspec kataloogist

  describe "GET 'home'" do
    it "peaks teatama et home on olemas" do
      get 'home'
      response.should be_success
    end
	
	it "peaks olema oige pealkiri" do
		get 'home'
		response.should have_selector("title",
									  :content => "AS Siimu Auto") #sellega kontrollida html koodi
	end
	
	it "ei tohi olla tyhi" do
		get 'home'
		response.body.should_not =~ /<body>\s*<\/body>/  #leht ei tohi tühi olla, kontrollitakse kas on tühis 
	end
  end

  describe "GET 'contact'" do
    it "peaks teatama et contact on olemas" do
      get 'contact'
      response.should be_success
    end
	
	it "peaks olema oige pealkiri" do
		get 'contact'
		response.should have_selector("title",
									  :content => "AS Siimu Auto | Kontakt") #sellega kontrollida html koodi
	end
  end
  
  describe "GET 'about'" do
	it "peaks teatama et about on olemas" do
		get 'about'
		response.should be_success
	end
	
	it "peaks olema oige pealkiri" do
		get 'about'
		response.should have_selector("title",
									  :content => "AS Siimu Auto | Firmast") #sellega kontrollida html koodi
	end
  end

end
