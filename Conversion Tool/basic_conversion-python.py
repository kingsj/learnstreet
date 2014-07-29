#Basic units conversion tool
def temperature(n, frm):
    res = []
    if frm == 'fahrenheit':
        celcius = (5 / 9.0) * (n - 32)
        kelvin = ((5 / 9.0) * (n - 32) + 273.15) 
        res.append(celcius)
        res.append(kelvin)
        return res 
    if frm == 'celsius': 
        fahrenheit = (n * (9 / 5.0) + 32) 
        kelvin = (n + 273.15) 
        res.append(fahrenheit)
        res.append(kelvin)
        return res 
     
    if frm == 'kelvin': 
        fahrenheit = (((n - 273.15) * (9 / 5.0)) + 32) 
        celsius = (n - 273.15) 
        res.append(fahrenheit)
        res.append(celsius)
        return res

def length(n, frm):
    res = []
    if frm == 'miles': 
        kilometers = n * 1.609 
        feet = n * 5280 
        meters = n * 1609 
        res.append(kilometers)
        res.append(feet)
        res.append(meters)
        return res 
     
    if frm == 'feet': 
        kilometers = n * 0.0003047
        meters = n * 0.3047 
        miles = n / 5280 
        res.append(kilometers)
        res.append(meters)
        res.append(miles)
        return res 
     
    if frm == 'kilometers': 
        miles = n / 1.609 
        meters = n * 1000 
        feet = n * 3280.85 
        res.append(miles)
        res.append(meters)
        res.append(feet)
        return res 
     
    if frm == 'meters': 
        miles = n / 1609 
        kilometers = n / 1000; 
        feet = n * 3.28085 
        res.append(miles)
        res.append(kilometers)
        res.append(feet)
        return res 

def volume(n, frm):
    res = [] 
    if frm == 'cubic_meter': 
        milliliters = n * 1000000 
        cubic_inches = n * 61023.74 
        gallons = n * 264.17 
        res.append(milliliters)
        res.append(cubic_inches)
        res.append(gallons)
        return res 
     
    if frm == 'milliliters': 
        cubic_meters = n * 0.000001 
        cubic_inches = n * 0.061 
        gallons = n * 0.00026 
        res.append(cubic_meters)
        res.append(cubic_inches)
        res.append(gallons)
        return res 
     
    if frm == 'cubic_inches': 
        cubic_meters = n * 0.000016 
        milliliters = n * 16.38 
        gallons = n * 0.0043 
        res.append(cubic_meters)
        res.append(milliliters)
        res.append(gallons)
        return res 
     
    if frm == 'gallons': 
        cubic_meters = n * 0.0037 
        milliliters = n * 3785.4 
        cubic_inches = n * 231 
        res.append(cubic_meters)
        res.append(milliliters)
        res.append(cubic_inches)
        return res 

def weight(n, frm):
    res = [] 
    if frm == 'pounds': 
        kilograms = n * 0.45 
        ounces = n * 16 
        res.append(kilograms)
        res.append(ounces)
        return res 
     
    if frm == 'kilograms': 
        pounds = n * 2.2 
        ounces = n * 35.27 
        res.append(pounds)
        res.append(ounces)
        return res 
     
    if frm == 'ounces': 
        pounds = n * 0.0625 
        kilograms = n * 0.028 
        res.append(pounds)
        res.append(kilograms)
        return res