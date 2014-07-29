# Age calculator
from datetime import datetime
def countdown(birth_month,birth_day,unit):
    todaysdate = datetime.today()
    cur_day = todaysdate.day
    cur_month = todaysdate.month
    cur_year = todaysdate.year
    if (birth_month == cur_month and birth_day < cur_day) or (birth_month < cur_month):
        cur_year += 1
    birth_date = datetime(cur_year, birth_month, birth_day)
    birth_date = datetime.combine(birth_date.date(), todaysdate.time())
    time_Diff = birth_date - todaysdate
    seconds = time_Diff.total_seconds()
    if unit == 'days':
        ans = time_Diff.days
        if ans == 0:
            return "HAPPY BIRTHDAY!"
        return ans
    if unit == 'hours':
        ans = seconds / 60 / 60
        if ans == 0:
            return "HAPPY BIRTHDAY!"
        return ans
    if unit == 'minutes':
        ans = seconds / 60
        if ans == 0:
            return "HAPPY BIRTHDAY!"
        return ans

def timehere(birth_month,birth_day,birth_year,unit):
    todaysdate = datetime.today()
    birth_date = datetime(birth_year, birth_month, birth_day)
    birth_date = datetime.combine(birth_date.date(), todaysdate.time())
    time_Diff = todaysdate - birth_date
    seconds = time_Diff.total_seconds()
    if unit == 'days':
        ans = time_Diff.days
        if ans < 0:
            return "Not yet born!"
        return ans
    if unit == 'hours':
        ans = seconds / 60 / 60
        if ans < 0:
            return "Not yet born!"
        return ans
    if unit == 'minutes':
        ans = seconds / 60
        if ans < 0:
            return "Not yet born!"
        return ans
    
    