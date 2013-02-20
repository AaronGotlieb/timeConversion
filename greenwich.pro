pro greenwich, yr, mn, dy , hr, min ,sec
  siderealtime, yr, mn, dy, zdjd
  siderealtime, yr, 1, 1, ydjd

time = hr + (min / 60d) + (min / 3600d)
t  = ydjd / 36525d
r  = 6.6460656d + 5.1262*1d-2 * t + 2.581*1d-5 * t^2d
r1 = 2400d*(t((yr-1900d)/100d))
b  = 24d - r - r1
t0 = (6.57098*1d-2 * (zdjd - ydjd)) -b
gmst = ((1.002737908d * time) + t0) mod 24d
print, "greenwich", gmst
end
