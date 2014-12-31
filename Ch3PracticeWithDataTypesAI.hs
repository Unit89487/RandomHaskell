--Lists and tuples are useful, but often we're going to want to define our own data types to give structure our programs.
--A data type consists of a collection of related values. The type name itself is established as the type constructor adjacent 
--to the 'data' keyword, and this expression is then bound to another, distinct name, the value constructor, and the fundamental, primitive
--data types that collect to compose the new data type. Here I'll define a data type called Twitter API return



data ResultsFromTwitterAPI = TwitterAPI TweetData UsersData EntitiesData PlacesData 

--the four things returned from Twitter's APIs are Tweets, Users, Entities that contain things like hashtags and media and attached urls that 
--provide additional contextual information about content posted on Twitter, and Places. 
--Since each of these things have a few components to them, I'm going to the master return API data type composed of four different data types
--that I'll define below. The 'data' keyword is followed by the type constructor 'ResultsFromTwitterAPI', which is then bound to the value constructor
--'TwitterAPI', followed by the four data types that are bound together to create the ResultsFromTwitterAPI data type. 

--There are objects returned by this Twitter API. How is Haskell going to deal with objects? It looks like all four of these Twitter API returns types
--are objects, with what I assume are properties. I.e. a Tweet object is returned, with properties annotations (obj), contributors (obj), 
--coordinates (coordinates), created_at (string), current_user_retweet (obj), entities (entities obj), favorite_count (int), favorited[by user] (bool),
--id (int64).... this goes on for a while. There are thirty one total properties, many of which, i.e. copyright_withheld that are most likely null or an 
--empty set, or absent for the majorty of tweets. 

--I'll just use the things I want. retweet_count, favorite_count, coordinates, created_at, retweeted_status [really returns another Tweet object, the original tweet]
--If retweeted-status returns another Tweet object. How do I represent that in here? Do I put "TweetData"? Isn't that a recursive definition? Then that original
--Tweet is going to have a TweetData value of... itself? No, it will be null because that field will be empty. 

data TweetData = Tweet Int Int (Float, Float) DateTime TweetData 


--created_at (when was account created? str), default_profile_image (egg? Bool), description ("The user-defined UTF8 string describing thier account"),
--favourites_count (int), followers_count (int), friends_count (aka followees, int), ID (64 bit signed int will be safe), lang (str), location (str),
--name (str), profile_image_URL_https (string), statuses_count (the number of tweets, incld retweets), time_zone (str). That's a lot of user data that's available.
--There are 43 total properties on the Users object. 
data UsersData = Users 	String Bool String Int Int Int Int String String String Int String 


--[strings] should be [objects]. array of hashtag objects, array of media objects, array of urls
data EntitiesData = Entities [String] [String] [String]


data PlacesData =  
