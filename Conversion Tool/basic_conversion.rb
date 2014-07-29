#Basic units conversion tool
def temperature(n, from)
res = []
if from == 'fahrenheit' then 
  celcius = (5/9.0)*(n-32)
  kelvin = ((5/9.0)*(n-32)+273.15) 
  res[0] = celcius 
  res[1] = kelvin 
  return res 
end 
if from == 'celsius' then 
  fahrenheit = (n*(9/5.0)+32) 
  kelvin = (n+273.15) 
  res[0] = fahrenheit 
  res[1] = kelvin 
  return res 
end 
if from == 'kelvin' then 
  fahrenheit = (((n-273.15)*(9/5.0))+32) 
  celsius = (n-273.15) 
  res[0] = fahrenheit 
  res[1] = celsius 
  return res 
end
end

def length(n, from)
res = []

if from == 'miles' then 

  kilometers = n*1.609 

  feet = n*5280 

  meters = n*1609 

  res[0] = kilometers 

  res[1] = feet 

  res[2] = meters 

  return res 

end 

if from == 'feet' then 

  kilometers = n*0.0003047

  meters = n*0.3047 

  miles = n/5280 

  res[0] = kilometers 

  res[1] = meters 

  res[2] = miles 

  return res 

end 

if from == 'kilometers' then 

  miles = n/1.609 

  meters = n*1000 

  feet = n*3280.85 

  res[0] = miles 

  res[1] = meters 

  res[2] = feet 

  return res 

end 

if from == 'meters' then 

  miles = n/1609 

  kilometers = n/1000; 

  feet = n*3.28085 

  res[0] = miles 

  res[1] = kilometers 

  res[2] = feet 

  return res 

end
end

def volume(n, from)
res = [] 

if from == 'cubic_meter' then 

  milliliters = n*1000000 

  cubic_inches = n*61023.74 

  gallons = n*264.17 

  res[0] = milliliters 

  res[1] = cubic_inches 

  res[2] = gallons 

  return res 

end 

if from == 'milliliters' then 

  cubic_meters = n*0.000001 

  cubic_inches = n*0.061 

  gallons = n*0.00026 

  res[0] = cubic_meters 

  res[1] = cubic_inches 

  res[2] = gallons 

  return res 

end 

if from == 'cubic_inches' then 

  cubic_meters = n*0.000016 

  milliliters = n*16.38 

  gallons = n*0.0043 

  res[0] = cubic_meters 

  res[1] = milliliters 

  res[2] = gallons 

  return res 

end 

if from == 'gallons' then 

  cubic_meters = n*0.0037 

  milliliters = n*3785.4 

  cubic_inches = n*231 

  res[0] = cubic_meters 

  res[1] = milliliters 

  res[2] = cubic_inches 

  return res 

end

end

def weight(n, from)
res = [] 

if from == 'pounds' then 

  kilograms = n*0.45 

  ounces = n*16 

  res[0] = kilograms 

  res[1] = ounces 

  return res 

end 

if from == 'kilograms' then 

  pounds = n*2.2 

  ounces = n*35.27 

  res[0] = pounds 

  res[1] = ounces 

  return res 

end 

if from == 'ounces' then 

  pounds = n*0.0625 

  kilograms = n*0.028 

  res[0] = pounds 

  res[1] = kilograms 

  return res 

end
end
