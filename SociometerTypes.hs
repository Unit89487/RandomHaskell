--A Haskell file that speculates as to what types a pedometer, sociometer might store. Might be interesting to build this on iPhone. 


--Char 
--Bool
--Int 
--Integer
--String 
--List 
--Tuple 
--   Function?

aChar = 'b'
moreChar = 'c'

isMoving = True --Is the meter/phone moving?
isConnected = False --Is the meter/phone currently connected to the internet?
isBeforeNoon = False --Is the time on the device before noon?
isBeforeNight = False --Is the time on the device before 8pm?

numberExtendedStops = 6  --The number of times the device has come to extended stops. Stops exceeding 5 minutes. 
numberShortExtendedStops = 4 --The number of stops between 1 minute and 10 minutes, i.e. sitting for 20 minutes on a bench excluded
numberMidrangeExtendedStops = 3 --Stops     10 minutes > stops > 1 hour
numberLongExtendedStops = 2 --Number of stops over 60 minutes 

