title "&SYSUSERID - HW2" ;
%let libpath= 'C:\Users\vigne\mysas'; 
libname HW2 "&libpath." ; 
%let pdfpath = 'C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2' ;
ods pdf file= "&pdfpath.\HW2.pdf" ;

PROC IMPORT OUT= WORK.BTS201503
            DATAFILE= "C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2\On_Time_On_Time_Performance_2015_3.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;


/*****************************************************************/
/*****************************************************************/

filename in201503 "C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2\On_Time_On_Time_Performance_2015_3.csv" ;

data BTS201503 ;
infile in201503 dsd delimiter="," dlmstr=',' missover firstobs=2 ;

length Year 4. Quarter 4. Month 4. DayofMonth 4. DayOfWeek 4. FlightDate 8. ; 
format flightdate yymmdd10. ;

input Year Quarter Month DayofMonth DayOfWeek FlightDate :yymmdd10. ;
if DayOfWeek=7 ;
run ;




filename in201503 "C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2\On_Time_On_Time_Performance_2015_3.csv" ;

data BTS201503 ;
data BTS201503
(drop = CRSDepTime DepTime CRSArrTime ArrTime FirstDepTime WheelsOff WheelsOn Div1WheelsOn Div1WheelsOff Div2WheelsOn 
Div2WheelsOff Div3WheelsOn Div3WheelsOff Div4WheelsOn Div4WheelsOff Div5WheelsOn Div5WheelsOff 
rename =(CRSDepTimeF=CRSDepTime DepTimeF=DepTime CRSArrTimeF=CRSArrTime ArrTimeF=ArrTime FirstDepTimeF=FirstDepTime 
WheelsOffF=WheelsOff WheelsOnF=WheelsOn Div1WheelsOnF=Div1WheelsOn Div1WheelsOffF=Div1WheelsOff Div2WheelsOnF=Div2WheelsOn 
Div2WheelsOffF=Div2WheelsOff Div3WheelsOnF=Div3WheelsOn Div3WheelsOffF=Div3WheelsOff Div4WheelsOnF=Div4WheelsOn 
Div4WheelsOffF=Div4WheelsOff Div5WheelsOnF=Div5WheelsOn Div5WheelsOffF=Div5WheelsOff) ) ;


infile in201503 dsd delimiter="," dlmstr=',' missover firstobs=2 ;

length Year 4. Quarter 4. Month 4. DayofMonth 4. DayOfWeek 4. FlightDate 8. UniqueCarrier $8. AirlineID  $4. 
Carrier  $4. TailNum  $10. FlightNum  $4. OriginAirportID  $8. OriginAirportSeqID  $8. OriginCityMarketID  $6. Origin  $32. 
OriginCityName  $32. OriginState  $32. OriginStateFips  $32. OriginStateName  $32. OriginWac  $32. DestAirportID  $6. 
DestAirportSeqID  $6. DestCityMarketID  $6. Dest  $32. DestCityName  $32. DestState  $32. DestStateFips  $32. 
DestStateName  $32. DestWac  $32. CRSDepTime  $8. CRSDepTimeF 8. DepTime  $8. DepTimeF  8. DepDelay 4. DepDelayMinutes 4. 
DepDel15 4. DepartureDelayGroups 4. DepTimeBlk  $9. TaxiOut 4. WheelsOff  $8. WheelsOffF  8. WheelsOn  $8. WheelsOnF  8. 
TaxiIn 4. CRSArrTime  $8. CRSArrTimeF  8. ArrTime  $8. ArrTimeF  8. ArrDelay 4. ArrDelayMinutes 4. ArrDel15 4. 
ArrivalDelayGroups  4. ArrTimeBlk  $9. Cancelled 4. CancellationCode  $8. Diverted  4. CRSElapsedTime 4. ActualElapsedTime 4. 
AirTime 4. Flights 4. Distance 4. DistanceGroup 4. CarrierDelay 4. WeatherDelay 4. NASDelay 4. SecurityDelay 4. LateAircraftDelay 4. 
FirstDepTime  $8. FirstDepTimeF  8. TotalAddGTime 4. LongestAddGTime 4. DivAirportLandings 4. DivReachedDest 4. DivActualElapsedTime 4. DivArrDelay 4. 
DivDistance 4. Div1Airport  $8. Div1AirportID  $8. Div1AirportSeqID  $8. Div1WheelsOn  $8. Div1WheelsOnF  8. Div1TotalGTime 4. Div1LongestGTime 4. 
Div1WheelsOff  $8. Div1WheelsOffF  8. Div1TailNum  $8. Div2Airport  $8. Div2AirportID  $8. Div2AirportSeqID  $8. Div2WheelsOn  $8. Div2WheelsOnF  8. Div2TotalGTime 4. 
Div2LongestGTime 4. Div2WheelsOff  $8. Div2WheelsOffF  8. Div2TailNum  $8. Div3Airport  $8. Div3AirportID  $8. Div3AirportSeqID  $8. Div3WheelsOn  $8. Div3WheelsOnF  8. 
Div3TotalGTime 4. Div3LongestGTime 4. Div3WheelsOff  $8. Div3WheelsOffF  8. Div3TailNum  $8. Div4Airport  $8. Div4AirportID  $8. Div4AirportSeqID  $8. 
Div4WheelsOn  $8. Div4WheelsOnF  8. Div4TotalGTime 4. Div4LongestGTime 4. Div4WheelsOff  $8. Div4WheelsOffF  8. Div4TailNum  $8. Div5Airport  $8. Div5AirportID  $8. 
Div5AirportSeqID  $8. Div5WheelsOn  $8. Div5WheelsOnF  8. Div5TotalGTime 4. Div5LongestGTime 4. Div5WheelsOff  $8. Div5WheelsOffF  8. Div5TailNum   $8.  ; 

format flightdate yymmdd10. ;

input Year Quarter Month DayofMonth DayOfWeek FlightDate :yymmdd10. UniqueCarrier $ AirlineID $ Carrier $ TailNum $ FlightNum $ 
OriginAirportID $ OriginAirportSeqID $ OriginCityMarketID $ Origin $ OriginCityName $ OriginState $ OriginStateFips $ 
OriginStateName $ OriginWac $ DestAirportID $ DestAirportSeqID $ DestCityMarketID $ Dest $ DestCityName $ DestState $ 
DestStateFips $ DestStateName $ DestWac $ CRSDepTime $ DepTime $ DepDelay DepDelayMinutes DepDel15 DepartureDelayGroups 
DepTimeBlk $ TaxiOut WheelsOff $ WheelsOn $ TaxiIn CRSArrTime $ ArrTime $ ArrDelay ArrDelayMinutes ArrDel15 ArrivalDelayGroups 
ArrTimeBlk $ Cancelled CancellationCode $ Diverted CRSElapsedTime ActualElapsedTime AirTime Flights Distance DistanceGroup 
CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay FirstDepTime $ TotalAddGTime LongestAddGTime 
DivAirportLandings DivReachedDest DivActualElapsedTime DivArrDelay DivDistance Div1Airport $ Div1AirportID $ Div1AirportSeqID $ 
Div1WheelsOn $ Div1TotalGTime Div1LongestGTime Div1WheelsOff $ Div1TailNum $ Div2Airport $ Div2AirportID $ Div2AirportSeqID $ 
Div2WheelsOn $ Div2TotalGTime Div2LongestGTime Div2WheelsOff $ Div2TailNum $ Div3Airport $ Div3AirportID $ Div3AirportSeqID $ 
Div3WheelsOn $ Div3TotalGTime Div3LongestGTime Div3WheelsOff $ Div3TailNum $ Div4Airport $ Div4AirportID $ Div4AirportSeqID $ 
Div4WheelsOn $ Div4TotalGTime Div4LongestGTime Div4WheelsOff $ Div4TailNum $ Div5Airport $ Div5AirportID $ Div5AirportSeqID $ 
Div5WheelsOn $ Div5TotalGTime Div5LongestGTime Div5WheelsOff $ Div5TailNum  $ ;  

if CRSDepTime="2400" then do ;
	CRSDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSDepTimeF time5. ;
			CRSDepTimeF=input(substr(CRSDepTime,1,2)||":"||substr(CRSDepTime,3,2), time5.) ; end ;

if DepTime="2400" then do ;
	DepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format DepTimeF time5. ;
			DepTimeF=input(substr(DepTime,1,2)||":"||substr(DepTime,3,2), time5.) ; end ;

if CRSArrTime="2400" then do ;
	CRSArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSArrTimeF time5. ;
			CRSArrTimeF=input(substr(CRSArrTime,1,2)||":"||substr(CRSArrTime,3,2), time5.) ; end ;

if ArrTime="2400" then do ;
	ArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format ArrTimeF time5. ;
			ArrTimeF=input(substr(ArrTime,1,2)||":"||substr(ArrTime,3,2), time5.) ; end ;

if FirstDepTime="2400" then do ;
	FirstDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format FirstDepTimeF time5. ;
			FirstDepTimeF=input(substr(FirstDepTime,1,2)||":"||substr(FirstDepTime,3,2), time5.) ; end ;

if WheelsOff="2400" then do ;
	WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOffF time5. ;
			WheelsOffF=input(substr(WheelsOff,1,2)||":"||substr(WheelsOff,3,2), time5.) ; end ;

if WheelsOn="2400" then do ;
	WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOnF time5. ;
			WheelsOnF=input(substr(WheelsOn,1,2)||":"||substr(WheelsOn,3,2), time5.) ; end ;

if Div1WheelsOn="2400" then do ;
	Div1WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOnF time5. ;
			Div1WheelsOnF=input(substr(Div1WheelsOn,1,2)||":"||substr(Div1WheelsOn,3,2), time5.) ; end ;

if Div1WheelsOff="2400" then do ;
	Div1WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOffF time5. ;
			Div1WheelsOffF=input(substr(Div1WheelsOff,1,2)||":"||substr(Div1WheelsOff,3,2), time5.) ; end ;

if Div2WheelsOn="2400" then do ;
	Div2WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOnF time5. ;
			Div2WheelsOnF=input(substr(Div2WheelsOn,1,2)||":"||substr(Div2WheelsOn,3,2), time5.) ; end ;

if Div2WheelsOff="2400" then do ;
	Div2WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOffF time5. ;
			Div2WheelsOffF=input(substr(Div2WheelsOff,1,2)||":"||substr(Div2WheelsOff,3,2), time5.) ; end ;

if Div3WheelsOn="2400" then do ;
	Div3WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOnF time5. ;
			Div3WheelsOnF=input(substr(Div3WheelsOn,1,2)||":"||substr(Div3WheelsOn,3,2), time5.) ; end ;

if Div3WheelsOff="2400" then do ;
	Div3WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOffF time5. ;
			Div3WheelsOffF=input(substr(Div3WheelsOff,1,2)||":"||substr(Div3WheelsOff,3,2), time5.) ; end ;

if Div4WheelsOn="2400" then do ;
	Div4WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOnF time5. ;
			Div4WheelsOnF=input(substr(Div4WheelsOn,1,2)||":"||substr(Div4WheelsOn,3,2), time5.) ; end ;

if Div4WheelsOff="2400" then do ;
	Div4WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOffF time5. ;
			Div4WheelsOffF=input(substr(Div4WheelsOff,1,2)||":"||substr(Div4WheelsOff,3,2), time5.) ; end ;

if Div5WheelsOn="2400" then do ;
	Div5WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOnF time5. ;
			Div5WheelsOnF=input(substr(Div5WheelsOn,1,2)||":"||substr(Div5WheelsOn,3,2), time5.) ; end ;

if Div5WheelsOff="2400" then do ;
	Div5WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOffF time5. ;
			Div5WheelsOffF=input(substr(Div5WheelsOff,1,2)||":"||substr(Div5WheelsOff,3,2), time5.) ; end ;



run ;



/***************************************************************************************/
/***************************************************************************************/
/***************************** Macrotize Long Strings **********************************/
/***************************************************************************************/
/***************************************************************************************/

%let droprenamemv = (drop = CRSDepTime DepTime CRSArrTime ArrTime FirstDepTime WheelsOff WheelsOn Div1WheelsOn Div1WheelsOff Div2WheelsOn 
Div2WheelsOff Div3WheelsOn Div3WheelsOff Div4WheelsOn Div4WheelsOff Div5WheelsOn Div5WheelsOff 
rename =(CRSDepTimeF=CRSDepTime DepTimeF=DepTime CRSArrTimeF=CRSArrTime ArrTimeF=ArrTime FirstDepTimeF=FirstDepTime 
WheelsOffF=WheelsOff WheelsOnF=WheelsOn Div1WheelsOnF=Div1WheelsOn Div1WheelsOffF=Div1WheelsOff Div2WheelsOnF=Div2WheelsOn 
Div2WheelsOffF=Div2WheelsOff Div3WheelsOnF=Div3WheelsOn Div3WheelsOffF=Div3WheelsOff Div4WheelsOnF=Div4WheelsOn 
Div4WheelsOffF=Div4WheelsOff Div5WheelsOnF=Div5WheelsOn Div5WheelsOffF=Div5WheelsOff) ) ;

%let lengthmv = length Year 4. Quarter 4. Month 4. DayofMonth 4. DayOfWeek 4. FlightDate 8. UniqueCarrier $8. AirlineID  $4. 
Carrier  $4. TailNum  $10. FlightNum  $4. OriginAirportID  $8. OriginAirportSeqID  $8. OriginCityMarketID  $6. Origin  $32. 
OriginCityName  $32. OriginState  $32. OriginStateFips  $32. OriginStateName  $32. OriginWac  $32. DestAirportID  $6. 
DestAirportSeqID  $6. DestCityMarketID  $6. Dest  $32. DestCityName  $32. DestState  $32. DestStateFips  $32. 
DestStateName  $32. DestWac  $32. CRSDepTime  $8. CRSDepTimeF 8. DepTime  $8. DepTimeF  8. DepDelay 4. DepDelayMinutes 4. 
DepDel15 4. DepartureDelayGroups 4. DepTimeBlk  $9. TaxiOut 4. WheelsOff  $8. WheelsOffF  8. WheelsOn  $8. WheelsOnF  8. 
TaxiIn 4. CRSArrTime  $8. CRSArrTimeF  8. ArrTime  $8. ArrTimeF  8. ArrDelay 4. ArrDelayMinutes 4. ArrDel15 4. 
ArrivalDelayGroups  4. ArrTimeBlk  $9. Cancelled 4. CancellationCode  $8. Diverted  4. CRSElapsedTime 4. ActualElapsedTime 4. 
AirTime 4. Flights 4. Distance 4. DistanceGroup 4. CarrierDelay 4. WeatherDelay 4. NASDelay 4. SecurityDelay 4. LateAircraftDelay 4. 
FirstDepTime  $8. FirstDepTimeF  8. TotalAddGTime 4. LongestAddGTime 4. DivAirportLandings 4. DivReachedDest 4. DivActualElapsedTime 4. DivArrDelay 4. 
DivDistance 4. Div1Airport  $8. Div1AirportID  $8. Div1AirportSeqID  $8. Div1WheelsOn  $8. Div1WheelsOnF  8. Div1TotalGTime 4. Div1LongestGTime 4. 
Div1WheelsOff  $8. Div1WheelsOffF  8. Div1TailNum  $8. Div2Airport  $8. Div2AirportID  $8. Div2AirportSeqID  $8. Div2WheelsOn  $8. Div2WheelsOnF  8. Div2TotalGTime 4. 
Div2LongestGTime 4. Div2WheelsOff  $8. Div2WheelsOffF  8. Div2TailNum  $8. Div3Airport  $8. Div3AirportID  $8. Div3AirportSeqID  $8. Div3WheelsOn  $8. Div3WheelsOnF  8. 
Div3TotalGTime 4. Div3LongestGTime 4. Div3WheelsOff  $8. Div3WheelsOffF  8. Div3TailNum  $8. Div4Airport  $8. Div4AirportID  $8. Div4AirportSeqID  $8. 
Div4WheelsOn  $8. Div4WheelsOnF  8. Div4TotalGTime 4. Div4LongestGTime 4. Div4WheelsOff  $8. Div4WheelsOffF  8. Div4TailNum  $8. Div5Airport  $8. Div5AirportID  $8. 
Div5AirportSeqID  $8. Div5WheelsOn  $8. Div5WheelsOnF  8. Div5TotalGTime 4. Div5LongestGTime 4. Div5WheelsOff  $8. Div5WheelsOffF  8. Div5TailNum   $8.  ; 

%let inputmv = input Year Quarter Month DayofMonth DayOfWeek FlightDate :yymmdd10. UniqueCarrier $ AirlineID $ Carrier $ TailNum $ FlightNum $ 
OriginAirportID $ OriginAirportSeqID $ OriginCityMarketID $ Origin $ OriginCityName $ OriginState $ OriginStateFips $ 
OriginStateName $ OriginWac $ DestAirportID $ DestAirportSeqID $ DestCityMarketID $ Dest $ DestCityName $ DestState $ 
DestStateFips $ DestStateName $ DestWac $ CRSDepTime $ DepTime $ DepDelay DepDelayMinutes DepDel15 DepartureDelayGroups 
DepTimeBlk $ TaxiOut WheelsOff $ WheelsOn $ TaxiIn CRSArrTime $ ArrTime $ ArrDelay ArrDelayMinutes ArrDel15 ArrivalDelayGroups 
ArrTimeBlk $ Cancelled CancellationCode $ Diverted CRSElapsedTime ActualElapsedTime AirTime Flights Distance DistanceGroup 
CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay FirstDepTime $ TotalAddGTime LongestAddGTime 
DivAirportLandings DivReachedDest DivActualElapsedTime DivArrDelay DivDistance Div1Airport $ Div1AirportID $ Div1AirportSeqID $ 
Div1WheelsOn $ Div1TotalGTime Div1LongestGTime Div1WheelsOff $ Div1TailNum $ Div2Airport $ Div2AirportID $ Div2AirportSeqID $ 
Div2WheelsOn $ Div2TotalGTime Div2LongestGTime Div2WheelsOff $ Div2TailNum $ Div3Airport $ Div3AirportID $ Div3AirportSeqID $ 
Div3WheelsOn $ Div3TotalGTime Div3LongestGTime Div3WheelsOff $ Div3TailNum $ Div4Airport $ Div4AirportID $ Div4AirportSeqID $ 
Div4WheelsOn $ Div4TotalGTime Div4LongestGTime Div4WheelsOff $ Div4TailNum $ Div5Airport $ Div5AirportID $ Div5AirportSeqID $ 
Div5WheelsOn $ Div5TotalGTime Div5LongestGTime Div5WheelsOff $ Div5TailNum  $ ;

%macro timevars ;
if CRSDepTime="2400" then do ;
	CRSDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSDepTimeF time5. ;
			CRSDepTimeF=input(substr(CRSDepTime,1,2)||":"||substr(CRSDepTime,3,2), time5.) ; end ;
if DepTime="2400" then do ;
	DepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format DepTimeF time5. ;
			DepTimeF=input(substr(DepTime,1,2)||":"||substr(DepTime,3,2), time5.) ; end ;
if CRSArrTime="2400" then do ;
	CRSArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSArrTimeF time5. ;
			CRSArrTimeF=input(substr(CRSArrTime,1,2)||":"||substr(CRSArrTime,3,2), time5.) ; end ;
if ArrTime="2400" then do ;
	ArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format ArrTimeF time5. ;
			ArrTimeF=input(substr(ArrTime,1,2)||":"||substr(ArrTime,3,2), time5.) ; end ;
if FirstDepTime="2400" then do ;
	FirstDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format FirstDepTimeF time5. ;
			FirstDepTimeF=input(substr(FirstDepTime,1,2)||":"||substr(FirstDepTime,3,2), time5.) ; end ;
if WheelsOff="2400" then do ;
	WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOffF time5. ;
			WheelsOffF=input(substr(WheelsOff,1,2)||":"||substr(WheelsOff,3,2), time5.) ; end ;
if WheelsOn="2400" then do ;
	WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOnF time5. ;
			WheelsOnF=input(substr(WheelsOn,1,2)||":"||substr(WheelsOn,3,2), time5.) ; end ;
if Div1WheelsOn="2400" then do ;
	Div1WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOnF time5. ;
			Div1WheelsOnF=input(substr(Div1WheelsOn,1,2)||":"||substr(Div1WheelsOn,3,2), time5.) ; end ;
if Div1WheelsOff="2400" then do ;
	Div1WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOffF time5. ;
			Div1WheelsOffF=input(substr(Div1WheelsOff,1,2)||":"||substr(Div1WheelsOff,3,2), time5.) ; end ;
if Div2WheelsOn="2400" then do ;
	Div2WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOnF time5. ;
			Div2WheelsOnF=input(substr(Div2WheelsOn,1,2)||":"||substr(Div2WheelsOn,3,2), time5.) ; end ;
if Div2WheelsOff="2400" then do ;
	Div2WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOffF time5. ;
			Div2WheelsOffF=input(substr(Div2WheelsOff,1,2)||":"||substr(Div2WheelsOff,3,2), time5.) ; end ;
if Div3WheelsOn="2400" then do ;
	Div3WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOnF time5. ;
			Div3WheelsOnF=input(substr(Div3WheelsOn,1,2)||":"||substr(Div3WheelsOn,3,2), time5.) ; end ;
if Div3WheelsOff="2400" then do ;
	Div3WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOffF time5. ;
			Div3WheelsOffF=input(substr(Div3WheelsOff,1,2)||":"||substr(Div3WheelsOff,3,2), time5.) ; end ;
if Div4WheelsOn="2400" then do ;
	Div4WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOnF time5. ;
			Div4WheelsOnF=input(substr(Div4WheelsOn,1,2)||":"||substr(Div4WheelsOn,3,2), time5.) ; end ;
if Div4WheelsOff="2400" then do ;
	Div4WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOffF time5. ;
			Div4WheelsOffF=input(substr(Div4WheelsOff,1,2)||":"||substr(Div4WheelsOff,3,2), time5.) ; end ;
if Div5WheelsOn="2400" then do ;
	Div5WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOnF time5. ;
			Div5WheelsOnF=input(substr(Div5WheelsOn,1,2)||":"||substr(Div5WheelsOn,3,2), time5.) ; end ;
if Div5WheelsOff="2400" then do ;
	Div5WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOffF time5. ;
			Div5WheelsOffF=input(substr(Div5WheelsOff,1,2)||":"||substr(Div5WheelsOff,3,2), time5.) ; end ;
%mend ;

/***************************************************************************************/
/***************************************************************************************/
/********************* Reference Multiple Files in Single FILENAME *********************/
/***************************************************************************************/
/***************************************************************************************/

data BTS201503_day1 &droprenamemv. ;
infile in201503 delimiter="," dsd dlmstr=',' missover firstobs=2 obs=55000 ;

&lengthmv. ;
format flightdate yymmdd10. ;
&inputmv. ;

%timevars ;

if DayOfMonth=1 ;

run ;

/***************************************************************************************/
/***************************************************************************************/
/**************** Reference Multiple Files in a SAS Dataset Manifest *******************/
/***************************************************************************************/
/***************************************************************************************/
data manifest ;
infile datalines firstobs=1 ;
length fil2read $155;
input fil2read $155.;
datalines;
C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2\On_Time_On_Time_Performance_2015_3.csv
;



data one &droprenamemv. ;
set manifest ;
infile dummy filevar=fil2read end=done dsd delimiter=',' firstobs=2 obs=max ;

	&lengthmv. ;

do while(not done);
	&inputmv. ;

	%timevars ;

/*if _N_>0 and DayOfMonth=1 then do ; output; end;*/
/*if _N_>0 and Month=6 and Carrier="AA" then do ; output; end;*/
* if Carrier ^="Carr" ;

output ;
end;
run ;


/****************************************************************/
/****************************************************************/
/*********************  Conventional ****************************/
/****************************************************************/
/****************************************************************/
filename bts1 "C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2\On_Time_On_Time_Performance_2015_3.csv"  ;


data one &droprenamemv. ;
infile bts1 dsd delimiter=',' firstobs=2 ;

	&lengthmv. ;

	&inputmv. ;

	%timevars ;
run ;



data One ;
set One ;
run ;

proc sort data=one ;
by Carrier TailNum FlightDate CRSDepTime FlightNum ;
run ;

/*1.a. Create one- and two-period lags for ArrDelay, named ArrDelayLag and ArrDelayLag2. Also create ArrDelayLagInd and ArrDelayLagCum as per previous examples. */
data BTS_lag_delays_201503 ;
retain   ArrDelayLag 0 ArrDelayLag2 0 ArrDelayLagCum 0;
format flightdate yymmdd10. SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 4. ;
set one ;
by Carrier TailNum FlightDate ;
if first.FlightDate=1 then do ;

	ArrDelayLag=0 ;
	ArrDelayLag2=0 ;
	ArrDelayLagInd=0 ;
	ArrDelayLagCum=0 ;

	SeqNum=1 ;
end ;


else do ;
	SeqNum+1 ;
	ArrDelayLagInd=(ArrDelayLag>0) ;
	ArrDelayLagCum+ArrDelayLag ;
end ;

if SeqNum=2 then do;
	DepDelayLag2=0;
	ArrDelayLag2=0;
end;

output ;

ArrDelayLag2=ArrDelayLag;
ArrDelayLag=ArrDelay ;

run ;

/*1.b. Create a one period lag for Cancelled, named CancelledLag1. */

data BTS_lag_delays_201503 ;
retain   ArrDelayLag 0 ArrDelayLag2 0 ArrDelayLagCum 0 CancelledLag1 0;
format flightdate yymmdd10. SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 4. ;
set one ;
by Carrier TailNum FlightDate ;
if first.FlightDate=1 then do ;

	ArrDelayLag=0 ;
	ArrDelayLag2=0 ;
	ArrDelayLagInd=0 ;
	ArrDelayLagCum=0 ;
	CancelledLag1=0 ;

	SeqNum=1 ;
end ;


else do ;
	SeqNum+1 ;
	ArrDelayLagInd=(ArrDelayLag>0) ;
	ArrDelayLagCum+ArrDelayLag ;
end ;

if SeqNum=2 then do;
	DepDelayLag2=0;
	ArrDelayLag2=0;
end;

output ;

ArrDelayLag2=ArrDelayLag;
ArrDelayLag=ArrDelay ;
CancelledLag1=Cancelled ;

run ;

/* 1.c. Use an appropriate PROC to replace missing ArrDelayLag<xxx> values with 0 in a new dataset named BTS201503REP.
This is using data step method:
data BTS201503REP;
   set BTS_lag_delays_201503;
   array change ArrDelayLag ArrDelayLag2;
        do over change;
            if change=. then change=0;
        end;
 run ;
This is using PROC method: */
proc stdize data=BTS_lag_delays_201503 out=BTS201503REP reponly missing=0;
   var ArrDelayLag ArrDelayLag2;
run;

/* 1.d. Create a new variable named DepDelayClass from DepartureDelayGroups.*/
DATA BTS201503REP;
retain   ArrDelayLag 0 ArrDelayLag2 0 ArrDelayLagCum 0 CancelledLag1 DepDelayClass 0;
format flightdate yymmdd10. SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 DepDelayClass 4. ;
    SET BTS201503REP;
    if  DepartureDelayGroups<=0 then do ;

	DepDelayClass=0;

	end ;
	
	if  DepartureDelayGroups in (1, 2, 3) then do ;

	DepDelayClass=1;
	end;

	if  DepartureDelayGroups>3 then do ;

	DepDelayClass=2;
	end;

output ;

run ;

/* 2. Us an appropriate PROC to estimate an Ordinal Logit model for DepDelayClass using the following independent variables:*/

proc logistic data=BTS201503REP ; * descending ;
*class origin (param=ref ref='ORD') ; *dest tailnum / desc;
*class carrier (param=ref ref='AA') /*dest tailnum*/ ;
model DepDelayClass = CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 
	/ link = clogit ; *glogit ;
output out=Bts_depdel_201503_ordlogit p=pred ;
*where Cancelled = 0 ;
run ;

/* 2.a. Ensure that the reference level of the DV is its smallest value (0).*/
proc logistic data=BTS201503REP ; * descending ;
*class DepDelayClass (param=ref ref='0') ; *dest tailnum / desc;
model DepDelayClass(event="0") = CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 
	/ link = clogit ; *glogit ;
output out=Bts_depdel_201503_ordlogit p=pred ;
*where Cancelled = 0 ;
run ;

/* 2.b. Use only observations where Cancelled=0.*/
proc logistic data=BTS201503REP ; * descending ;
*class DepDelayClass (param=ref ref='0') ; *dest tailnum / desc;
model DepDelayClass(event="0") = CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 
	/ link = clogit ; *glogit ;
output out=Bts_depdel_201503_ordlogit p=pred ;
where Cancelled = 0 ;
run ;

/* 2.c. Estimate a Multinomial logistic regression model with the same data, same reference level, and same filter criteria. */
proc catmod data = BTS201503REP ;
  direct CRSDepTime SeqNum ArrDelayLag ArrDelayLagCum ArrDelayLag2 ;
  response logits / out=Bts_depdel_201503_multlogit ;
  model DepDelayClass = CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 /oneway; *DepDelayLag DepDelayLagInd DepDelayLagCum ;
run;

/* 3. Use appropriate SAS data step syntax to read the O'Hare 2015 weather file (Weather_ord_2015_miss.txt) into a SAS dataset. (Variables are Flight Date, Weather Station Name, 
Daily Precipitation (PRCP), Snow Depth on Ground (SNWD), Daily Snowfall (SNOW), Daily Low Temp (TEMPMIN), and  Daily High Temp (TEMPMAX)).*/
/*3.a. Note that the weather file includes missing values.*/

filename INfile "C:\Vignesh\Studies\Spring 19\Adv Analytics using SAS\HW\HW2\Weather_ord_2015_miss.txt" ;

data WTHRData ;
length FLIGHTDATE 8. STATION_NAME $41. PRCP SNWD SNOW 4 TMAX TMIN 4 ; 
format flightdate yymmdd10. PRCP SNWD SNOW z4.2 TMAX TMIN z2.;

infile INfile dsd delimiter='|' missover firstobs=2 ;
input FLIGHTDATE :yymmdd10. STATION_NAME PRCP SNWD SNOW TMAX TMIN;
run ;


/* 3.b. Create a new dataset named BTS201503WTHR that MERGEs the partial weather file to the March, 2015 BTS file in a DATA step-Include only observations with ORIGIN="ORD" in the new dataset.*/

proc sort data=BTS201503REP ;
by flightdate CRSDepTime ;
run ;

proc sort data=WTHRData ;
by FlightDate ;
run ;

data BTS201503WTHR (drop=div:) ;
merge BTS201503REP 
	WTHRData(keep= FlightDate PRCP SNWD SNOW TMAX TMIN);
by FlightDate ;
if Origin='ORD' ;
run ;

/* 3.c. Create a new dataset named BTS201503WTHRIMP with 12 iterations of multiple imputation values for missing values of snow, tempmin, and tempmax. */

proc mi data=BTS201503WTHR nimpute=12 out=BTS201503WTHRIMP ;
* by monthnum ;
* class <variables> ;
FCS ; *nbiter=1 ; *[Imputation method];
* freq snow ;
* TRANSFORM transform (variables </options>);
var SNOW TMAX TMIN ;
run ;

/* 3.d. Estimate an OLS regression model for DepDelay, using the IVs from the previous LOGISTIC model, plus tempmin, tempmax, and snow. */

proc reg data=BTS201503WTHRIMP outest=BTS201503WTHRIMP_mimp COVOUT ;
model DepDelay = CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 SNOW TMAX TMIN ;
by _Imputation_;
*where cancelled=0 and carrier="AA" and origin='ORD' ;
run ; 


/* 3.e. Use only observations where CANCELLED=0 and ORIGIN="ORD". */
proc reg data=BTS201503WTHRIMP outest=BTS201503WTHRIMP_mimp COVOUT ;
model DepDelay = CRSDepTime SeqNum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1 SNOW TMAX TMIN ;
where cancelled=0 and origin='ORD' ;
by _Imputation_;
run ; 

/*3.f. Use an appropriate SAS proc to evaluate the Multiple Imputation parameter estimates for tempmin, tempmax, and snow. */

proc mianalyze data=BTS201503WTHRIMP_mimp ;
modeleffects SNOW TMAX TMIN ;
run ;

/* 4. Install a supported version of R to invoke from a SAS IML session. */

proc options option=rlang; 
run;

-RLANG ;
-SET R_HOME "C:\Program Files\R\R-3.4.1"
-config "C:\Program Files\SASHome\SASFoundation\9.4\nls\en\sasv9.cfg";

%put %sysget(R_HOME);

proc iml ;

title "Statistics in R (integration with SAS)";

run ExportDatasetToR("BTS201503REP", "SASfile");   /*Replace BTS201503REP with the name of the file you used in Q2.*/

submit / R;

#_______Begin of R code_________________


list.of.packages <- c("MASS")

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]

if(length(new.packages)) install.packages(new.packages)

library(MASS)

attach(SASfile)

SASfile$DepDelayClassR <- factor(DepDelayClass)


results <- polr(DepDelayClassR ~ CRSDepTime + SeqNum + ArrDelayLagInd + ArrDelayLag + ArrDelayLagCum + ArrDelayLag2 + CancelledLag1, data = SASfile, Hess=TRUE)

print(results)


#_______End of R code_________________

endsubmit;


 title ;

quit ;

/* 4.c. What differences do you observe in results from SAS v results from R? */
/* All the coefficient values of all the variables are almost similar in both SAS & R. There is a slight difference between the two among AIC which is offset by a value of approx 10 units.
And there is a difference of 7 units of Residual Deviance between them both. These along with the coefficients of other variables when compared to R, provide almost similar results.
Other than that both SAS & R rovide almost similar results most of the time. */

ods pdf close ;

