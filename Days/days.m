function  nd = days(mo, da, leap)
mo = input('Enter any month number:\n ')
da = input('Enter day of month:\n ')
leap = input('Is it a leap year? (0 or 1):\n')

if leap == 1 && mo > 2
    febDays = 29;
elseif leap == 0 && mo >2
    febDays = 28;
end

numDays = [31 febDays 31 30 31 30 31 31 30 31 30 31]
nd = sum(numDays(1:mo-1)) + da

fprintf('Number of days elapsed:\n', nd)
end




