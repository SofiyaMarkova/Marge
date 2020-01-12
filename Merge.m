%Sofiya Markova
%goal of code:
%merge 2 already sorted arrays in ascending order into 1 sorted array



%1 st array, already sorted
ar1 = [1 3 5 7 9 11 27];
%2nd array, already sorted
ar2 = [2 4 5 8 12 13];
%blank array to sort into as compare
merge = [];
 
%i traces array 1. j traces array 2, k used for merge array

%start at 1st index for all arrays
i = 1;
j = 1;
k = 1;


%traverse while still left of one of arrays (when run out of elements in either go next while loop)

while i <= length(ar1) & j <= length(ar2)       
    
%check which element less

%if in array 1 less value
if ar1(i)< ar2(j)
    
    % saved smaller to res[]
    merge(k) = ar1 (i);
    
    %increment i to move so can compare next element
    i = i + 1;
    %increment k so space for next value to put in
    k = k +1;
  
    %else array 2 has less value
else
    %saved smaller to res[]
    merge(k) = ar2 (j);
    
    %increment j to move so can compare next element
    j = j + 1;
    %increment k so space for next value to put in
    k = k + 1;
    
end

end 


%when run out of elements in 2nd array, past all in 1st array (already sorted)
while i <= length(ar1)
    %saved smaller to res[]
    merge(k)= ar1(i);
    
    %increment i to move so can compare next element
    i = i + 1;
    %increment k so space for next value to put in
    k = k +1;
    
    
end
 
%when run out of elements in 1st array paste all in 2nd array (already sorted)
while j <= length(ar2)
    %saved smaller to res[]
     merge(k) = ar2(j);
        
    %increment j to move so can compare next element
    j = j + 1;
    %increment k so space for next value to put in
    k = k +1;
        
end 

%to display answer
display(merge);