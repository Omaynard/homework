class UserController < Sinatra::Base

	# sets root as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__), "..")

	# sets the view directory correctly
	set :views, Proc.new { File.join(root, "views") }

	configure :development do
		register Sinatra::Reloader
	end

	$videos = [{
      id: 0,
      name: "video1",
      description: "Usain Bolt"
      link:"https://www.youtube.com/embed/0PH0SV4j1Es?ecver=2" width="960" height="720" frameborder="10" style="position:center;width:100%;height:100%;left:0" allowfullscreen
  },
  {
      id: 1,
      name: "video2",
      description: "Lebron"
  },
  {
      id: 2,
      name: "video3",
      description: "Messi"
  }];


	# INDEX
	get "/users" do
		@videos = $videos
		erb :index
		# "This is the users INDEX"
	end

	# NEW
	get "/users/new" do
		@videos = $videos
		erb :new
	end

	# SHOW
	get "/users/:id" do
		id = params[:id]
		@videos = $videos[id.to_i]
		erb :show
	end

	# CREATE
	post "/users" do
		name = params[:name]
		description = params[:description]
		new_pokemon = {
			id: $videos.length,
			name: name,
			description: description
		}
		$videos.push new_video
		redirect :"/users"
	end

	# EDIT
	get "/users/:id/edit" do
		id = params[:id]
		@videos = $videos[id.to_i]
		erb :edit
	end

	# UPDATE
	put "/users/:id" do
		id = params[:id].to_i
		videos = $videos[id]
		videos[:name] = params[:name]
		videos[:description] = params[:description]
		$videos[id] = videos
		redirect :"/users/#{id}"
	end

	# DELETE
	delete "/users/:id" do
		id = params[:id]
		videos = $videos[id.to_i]
		$videos.delete videos
		redirect :"/users"
	end
end