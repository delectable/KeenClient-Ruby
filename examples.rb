require 'rubygems'
require 'keen'
 
# Get these from the keen.io website:
project_id = 'asdfasldkfjalsdkfalskdfj'
api_key = 'asldfjklj325tkl32jaskdlfjaf'

# First you must setup the client:
keen = Keen::Client.new(project_id, api_key, :storage_mode => :redis)

# Then, you can use that client to send events.  

keen.add_event("purchases", {
  :quantity   => @quantity,
  :user       => @user.hashify,
  :item       => @item.hashify,
  :session    => @session.hashify,
})

keen.add_event("pageviews", {
  :user       => @user.hashify,
  :route      => @current_route,
  :session    => @session.hashify,
})

keen.add_event("purchases", [{
  :quantity   => @quantity1,
  :user       => @user1.hashify,
  :item       => @item1.hashify,
  :session    => @session1.hashify,
},{
  :quantity   => @quantity2,
  :user       => @user2.hashify,
  :item       => @item2.hashify,
  :session    => @session2.hashify,
}])


# (These examples pretend your important objects all have a method called
# "hashify", and that method serializes state information you wish to track.)
