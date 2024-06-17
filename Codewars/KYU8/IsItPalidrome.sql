--Is it a palindrome?
--

SELECT str,  
CASE
WHEN REVERSE(str) ILIKE str THEN true
ELSE false 
END AS res 
FROM ispalindrome

--select str, reverse(lower(str)) = lower(str) as res from ispalindrome