--I'll be practicing with some data types up in here.

--Write a Haskell program to see if a voter has voted in more than one third of the local elections since that voter became eligible to vote. 

--Define a data type Voter, a data type Election, and a data type Candidate

data ElectionData = Election String Int Int (String, Int)
--Where String is the state abbreviation, Int is the congressional district, Int is the rank of that district by population in the state,
--and the 2-tuple (String, Int) is the sitting Congressperson's name and number of years in office. 

data VoterInfo = Voter String String Int Int [String] Int Float 

--Where String is the voter's name, String is the voter's registered party, Int is the voter's age, Int is the voter's district, [String]
--is the high schools, colleges, parks and public venues near the voter's residence. Int is the number of local elections a voter has voted in. 
--Float is the ratio of the number of elections a voter has voted in, to the number of elections eligble since they turned 18. 

data CandidateInfo = Candidate String String Int Int Int Int Int ([Int], String)

--String is name, string is party, int is years in office, int is openly acknowledged funding, int is number of Twitter followers (an extremely)
--rough measure of social media effort. Int is Facebook fans. Int is candidates webpages Alexa rank. ([Int], String) is the view count of news articles
--appearing online and the website. 

--I need to make a Lyndon, or Clinton metric - aka a metric that attempts to approximate or at least represent a candidate's in-person connection
--with constituents. The physical element. The Mexican hug for Lyndon. Height of a candidate. Smile. Speech-making ability. Above all - time
--spent in-person speaking to constituents. Not just giving speeches, but in-person contact. Over the phone, at public events. 
--That's a difficult metric. Where is the data for that coming from? The Twitter follower count and Facebook fan count are obvious and straightforward
--to gather with a crawler or something else. But most of this in-person activity is totally undocumented. With the little documentation that does
--exist being paper flyers or maybe a Facebook post about an event the candidate is attending. 


data CandidateTwitterPresence = CandidateTwitter Int 


--Let's not pretend that these social media ints, when reduced to metrics like post count and follower count and tweet count and 
--simple metrics like this provide anything resembling a rich picture of the attitude people have towards a candidate. These are 'dumb metrics' -
--they just tell you scale, they give you rough 


--The information returned from the Twitter API is representative of what? It's representative of activity on Twitter in terms of posts, feeds, tweets, etc.
--Whether or not, or to what extent, this information is informative as a measure of actual social attitudes on the ground is an open question. 
--What is the connection between these metrics and voting? Between these metrics and the outcome of elections? Has that been explored? 
--"What is the connection between these metrics and voting", if any, is a more specific form of the question "What is the connection between
--these metrics and the behavior of the posters, communities, readers, etc. that create and consume them?" Is it a weak connection? Statistically significant?


--Twitter is extremely short form. The social feedback is immediate. Since posters are almost certainly cognizant to a high degree of the social evaluation 
--a post will face, it stands to reason that the content of the posts is chosen through some automatic decision-making process that takes into account these
--social factors. I.e. in this particular example of elections, a person may feel no animosity towards a candidate, but will nevertheless tweet something
--negative about them if they see something negative being retweet around, or if they see something funny about the candidate being disseminated and 
--want to join in on the fun. 

--Well... that's getting into social network analysis. 

--Social media presence, digital presence, etc. should not be mistaken for actual real-world presence. It's one indicator. It's one factor. It's probably
--more important when it comes to young voters. I'm not even sure if that trope is empirically true. How would I find out? 
--Build some rough models for Twitter presence and Facebook presence, using historical or live data (the nice thing is you can do this with live data),
--and follow some local election. See how it turns out.  





data CandidateFacebookPresence = CandidateFacebook 

data CandidateSocialMediaPresence = CandidateSocialMedia CandidateTwitter CandidateFacebook CandidateInstagram  

--Int Twitter followers, Int 

data CandidateOnlineNewsPresence = CandidateOnlineNews 

data CandidateBlogospherePresence = CandidateBlogosophere 

data CandidateDigitalPresence = DigitalPresence CandidateSocialMediaPresence CandidateOnlineNewsPresence CandidateBlogospherePresence



aVoter = Voter "Timbo" "Repub" 28 3 ["Lehigh High", "Gary Town Center"] 6 (6/16)
anotherVoter = Voter "Connor" "Dem" 29 3 ["Kimberly High", "Gracy Park"] 8 (8/17)
anothaVoter = Voter "Kelly" "Repub" 30 3 ["Lake High", "Lincoln Town Center", "Jasper Fair"] 6 (6/18)
moreVoter = Voter "Sam" "Dem" 59 3 ["Forest High", "Lincoln Town Center", "Forest Square"] 21 (21/58)

voters = [aVoter, anotherVoter, anothaVoter, moreVoter]

