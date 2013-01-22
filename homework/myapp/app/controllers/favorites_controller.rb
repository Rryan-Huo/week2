class FavoritesController<ApplicationController
	def show
		@fav={:favorites => {1=>"cars",2=>"house",3=>"photos"}}
	end
end