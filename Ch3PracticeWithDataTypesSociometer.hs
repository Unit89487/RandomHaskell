

data MicrophoneInfo = Microphone Float Float Float
data AccelerometerInfo = Accelerometer Float Float Float
data SociometerInfo = Sociometer MicrophoneInfo AccelerometerInfo

--We're giving a collection of related values a name and a distinct type. In the case of Mic and Accel, the related values are three float
--values. These related values are related. We've given them names, and distinct types.
--We define a new data type using the 'data' keyword. 
--
--

--where float is the frequency of the audio data recorded by a microphone... 
--Pentland/Olguin's team split the audio data they got into four frequencies that correspond to the typical range of human speech. 
--It's way more involved than that, but I don't have the publication in front of me at the moment so I'll just make some stuff up for 
--the sake of practicing Haskell.




micData = Microphone 