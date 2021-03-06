% Write a function called fare that computes the bus fare one must pay in 
%   a given city based on the distance travelled. Here is how the fare is 
%   calculated: the first mile is $2. Each additional mile up to a total 
%   trip distance of 10 miles is 25 cents. Each additional mile over 10 
%   miles is 10 cents. Miles are rounded to the nearest integer other than
%   the first mile which must be paid in full once a journey begins. 
%   Children 18 or younger and seniors 60 or older get a 20% discount. The
%   inputs to the function are the distance of the journey and the age of
%   the passenger in this order. Return the fare in dollars, e.g., 2.75 
%   would be the result returned for a 4-mile trip with no discount.
%
% This function computes the bus fare in a given city based on the distance
% travelled and the age of the traveller. First mile is $2, miles 2 to 10
% is 25 cents and miles from 11 onwards are 10 cents. Children under 18 and
% seniors at least 60 get 20 % of.
%
% Input 1: d, distance travelled in miles
% Input 2: a, age of the traveller
% Output: f, fare in dollars

function cost = fare(miles,age)
    cost = 2;                   % initial value for cost
    miles = round(miles);       % initial modification of miles, round rounds input to the nearest integer
    if miles <= 10              % cost if miles less than ten
        cost = cost + max([0 (miles-1)]) * 0.25;
    else
        cost = cost + 9 * 0.25 + (miles-10) * 0.1;
    end
    if age <= 18 || age >= 60   % a separate if-statement for the discount
        cost = cost * 0.8;
    end
end