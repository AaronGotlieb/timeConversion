pro julian, yr, mn, dy, jd
; Aaron Gotlieb, AS 203
; Apache License 2.0 
; this function takes as its perameter month, day, hour and empyt julian date
; it returns said perameters in Julian Date format

if mn eq 1d or 2d then begin ; checks to see if the month is january or febuary 
  mn1 = mn + 12d             ; if it is, its a specail case and year must be subtracted by 1
  yr1 = yr -1                ; and month added 12 to keep the date accurate
  endif 
if mn gt 2 then begin
  mn1 = mn
  yr1 = yr
  endif
a = long(yr1/100d)         ; this code is converted from the lab worksheet formula.
b = 2d - fix(a + a/4d)
c = long((365.25d * yr1) - 694025d) ; it has been reorderd allowing for unkown variables 
d = long(30.6001d * (mn1 + 1d))     ; to be calculated before their use
djd = b + c + d - 0.5d
jd = djd + 2415020d
 
months = strarr(13)      ;  this is an array that stores the values of the month 
months(1) = "January"    ;  for the output to be more readable
months(2) = "February"
months(3) = "March"
months(4) = "April"
months(5) = "May"
months(6) = "June"
months(7) = "July"
months(8) = "August"
months(9) = "September"
months(10) = "October"
months(11) = "November"
months(12) = "December"
print, months(mn),long(dy), long(yr), " has a JD of:" , jd

end
