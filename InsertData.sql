# Tool: ImportTsv

#for column family BASE in USER02.YBUSINESS table
/usr/bin/hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.separator=',' -Dimporttsv.columns='HBASE_ROW_KEY, BASE:NAME,BASE:NEIGHBORHOOD,BASE:ADDRESS,
BASE:CITY,BASE:STATE,BASE:POSTALCODE,BASE:LATITUDE,BASE:LONGITUDE,BASE:STARS,BASE:REVIEWCOUNT,BASE:ISOPEN,BASE:CATEGORIES' 
USER02.YBUSINESS hdfs://snf-817076.vm.okeanos.grnet.gr:/user/hbase/dataset/ybusiness.csv

#for column family ATTRIBUTES in USER02.YBUSINESS table
/usr/bin/hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.separator=',' -Dimporttsv.columns='HBASE_ROW_KEY,ATTRIBUTES:ACCEPTSINSURANCE,
ATTRIBUTES:BYAPPOINTMENTONLY,ATTRIBUTES:BUSINESSACCEPTSCREDITCARDS,ATTRIBUTES:BUSINESSPARKINGGARAGE,ATTRIBUTES:BUSINESSPARKINGSTREET,
ATTRIBUTES:BUSINESSPARKINGVALIDATED,ATTRIBUTES:BUSINESSPARKINGLOT,ATTRIBUTES:BUSINESSPARKINGVALET,ATTRIBUTES:HAIRSPECIALIZESINCOLORING,
ATTRIBUTES:HAIRSPECIALIAZESINAFRICANAMERICAN,ATTRIBUTES:HAIRSPECIALIZESINCURLY,ATTRIBUTES:HAIRSPECIALIZESINPERMS,ATTRIBUTES:HAIRSPECIALIZESINKIDS,
ATTRIBUTES:HAIRSPECIALIZESINEXTENSIONS,ATTRIBUTES:HAIRSPESIALIZESINASIAN,ATTRIBUTES:HAIRSPECIALIAZESINSTRAIGHTPERMS,ATTRIBUTES:RESTAURANTSPRICERANGE2,
ATTRIBUTES:GOODFORKIDS,ATTRIBUTES:WHEELCHAIRACCESSIBLE,ATTRIBUTES:BIKEPARKING,ATTRIBUTES:ALCOHOL,ATTRIBUTES:HASTV,ATTRIBUTES:NOISELEVEL,ATTRIBUTES:RESTAURANTSATTIRE,
ATTRIBUTES:MUSICDJ,ATTRIBUTES:MUSICBACKGROUNDMUSIC,ATTRIBUTES:MUSICNOMUSIC,ATTRIBUTES:MUSICKARAOKE,ATTRIBUTES:MUSICLIVE,ATTRIBUTES:MUSICVIDEO,ATTRIBUTES:MUSICJUKEBOX,
ATTRIBUTES:AMBIENCEROMANTIC,ATTRIBUTES:AMBIENCEINTIMATE,ATTRIBUTES:AMBIENCECLASSY,ATTRIBUTES:AMBIENCEHIPSTER,ATTRIBUTES:AMBIENCEDIVEY,ATTRIBUTES:AMBIENCETOURISTY,
ATTRIBUTES:AMBIENCETRENDY,ATTRIBUTES:AMBIENCEUPSCALE,ATTRIBUTES:AMBIENCECASUAL,ATTRIBUTES:RESTAURANTSGOODFORGROUPS,ATTRIBUTES:CATERS,ATTRIBUTES:WIFI,
ATTRIBUTES:RESTAURANTSRESERVATIONS,ATTRIBUTES:RESTAURANTSTAKEOUT,ATTRIBUTES:HAPPYHOUR,ATTRIBUTES:GOODFORDANCING,ATTRIBUTES:RESTAURANTSTABLESERVICE,
ATTRIBUTES:OUTDOORSEATING,ATTRIBUTES:RESTAURANTSDELIVERY,ATTRIBUTES:BESTNIGHTSMONDAY,ATTRIBUTES:BESTNIGHTSTUESDAY,ATTRIBUTES:BESTNIGHTSFRIDAY,
ATTRIBUTES:BESTNIGHTSWEDNESDAY,ATTRIBUTES:BESTNIGHTSTHURSDAY,ATTRIBUTES:BESTNIGHTSSUNDAY,ATTRIBUTES:BESTNIGHTSSATURDAY,ATTRIBUTES:GOODFORMEALDESSERT,
ATTRIBUTES:GOODFORMEALLATENIGHT,ATTRIBUTES:GOODFORMEALLUNCH,ATTRIBUTES:GOODFORMEALDINNER,ATTRIBUTES:GOODFORMEALBREAKFAST,ATTRIBUTES:GOODFORMEALBRUNCH,
ATTRIBUTES:COATCHECK,ATTRIBUTES:SMOKING,ATTRIBUTES:DRIVETHRU,ATTRIBUTES:DOGSALLOWED,ATTRIBUTES:BUSINESSACCEPTSBITCOIN,ATTRIBUTES:OPEN24HOURS,ATTRIBUTES:BYOBCORKAGE,
ATTRIBUTES:BYOB,ATTRIBUTES:CORKAGE,ATTRIBUTES:DIETARYRESTRICTIONSDAIRYFREE,ATTRIBUTES:DIETARYRESTRICTIONSGLUTENFREE,ATTRIBUTES:DIETARYRESTRICTIONSVEGAN,
ATTRIBUTES:DIETARYRESTRICTIONSKOSHER,ATTRIBUTES:DIETARYRESTRICTIONSHALAL,ATTRIBUTES:DIETARYRESTRICTIONSSOYFREE,ATTRIBUTES:DIETARYRESTRICTIONSVEGETARIAN,
ATTRIBUTES:AGESALLOWED,ATTRIBUTES:RESTAURANTSCOUNTERSERVICE' USER02.YBUSINESS hdfs://snf-817076.vm.okeanos.grnet.gr:/user/hbase/dataset/ybusiness_attributes.csv

#for column family HOURS in USER02.YBUSINESS table
/usr/bin/hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.separator=',' -Dimporttsv.columns='HBASE_ROW_KEY,HOURS:MONDAY,HOURS:TUESDAY,HOURS:WEDNESDAY,
HOURS:THURSDAY,HOURS:FRIDAY,HOURS:SATURDAY,HOURS:SUNDAY' USER02.YBUSINESS hdfs://snf-817076.vm.okeanos.grnet.gr:/user/hbase/dataset/ybusiness_hours.csv

#for column family PERHOUR in USER02.YCHECKIN table
hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.separator=, -Dimporttsv.columns="HBASE_ROW_KEY, PERHOUR:BUSINESSID, PERHOUR:WEEKDAY, 
PERHOUR:HOUR, PERHOUR:CHECKINS" "USER02.YCHECKIN" /user/hbase/dataset/ycheckin.csv
