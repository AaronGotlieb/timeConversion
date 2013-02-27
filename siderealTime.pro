pro julian, yr, mn, dy, jd
; This code was written by Aaron Gotlieb for AS 203
; The code is modeled after a lab assignment where the formula is adapted from

if mn eq 1d or 2d then begin
  mn1 = mn + 12d
  yr1 = yr -1
  endif 
if mn gt 2 then begin
  mn1 = mn
  yr1 = yr
  endif
a = long(yr1/100d)
b = 2d - fix(a + a/4d)
c = long((365.25d * yr1) - 694025d)
d = long(30.6001d * (mn1 + 1d))
djd = b + c + d - 0.5d
jd = djd + 2415020d

months = strarr(13)
months(1) = "January"
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
