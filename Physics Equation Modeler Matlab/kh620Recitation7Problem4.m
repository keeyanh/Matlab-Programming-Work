%This function calculates the end values of a set of accounts, a schedule 
%of depositsgiven a set of monthly gain rates (interest rates). Rates can
%be positive or negative.
%accountRates and deposits are of dimensions timexnumAccounts, where time 
%is the number of months the account is active for and numAccounts is the
%number of of elements in accounts.

function [accounts, totalGained, myMoney] = kh620Recitation7Problem4(accounts,deposits,...
    accountRates)

[time, numAccounts] = size(accountRates);
[time2, ~] = size(deposits);

%This is an example of you you can create your own errors. We need all of
%our inputs to be the same length, in terms of how many loans there are.
%This checks that condition and returns a more informative error in case
%they aren't the same. If you didn't have this here, you'd still encounter
%an error later in your program when this condition isn't met, you would
%just have to do more interpreting.
if ~(numAccounts == length(accounts) && numAccounts == time2 &&...
        time == time2)
    error('You must have a consistent dimensions among your inputs')
end

%Interest accrued durring this payment schedule starts at 0.
totalGained = 0;

for j = 1:numAccounts
    for i = 1:time
        %With these accounts, we add montly deposits to the account
        %total BEFORE calculating interest.
        accounts(j) = accounts(i) + deposits(j,i);
        %This will always calculate interest assuming a monthly interest
        %rates
        newAmt = accounts(i)+accounts(i)*accountRates(j,i)/100;
        %We determine the new loan amount, then use the difference
        %between new and old amounts (after payment) to update the
        %total amount of interest accrued.
        totalGained = totalGained - newAmt-accounts(i);
        %Once we make the interest calculation, we update our account
        %amount.
        accounts(i) = newAmt;
    end    
end
%The total amount owed in loans is the sum of all loans after the payment
%schedule.
myMoney = sum(accounts);