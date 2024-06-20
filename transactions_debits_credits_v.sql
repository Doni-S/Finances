WITH  transactions_debits_credits as (SELECT * FROM `spending_history.all_transactions_v` ), transaction_data
 as (SELECT date,
  EXTRACT(month
  FROM
    date) AS month,
  EXTRACT(year
  FROM
    date) AS year,
description,
  CASE
    WHEN lower(description)
 LIKE '%kc%market%' THEN 'groceries'
    WHEN lower(description)
 LIKE '%amazon%' THEN 'misc'
    WHEN lower(description)
 LIKE '%gas%' THEN 'car'
     WHEN lower(description)
 LIKE '%yehuda%' THEN 'rent'
     WHEN lower(description)
 LIKE '%publix%' THEN 'groceries'
    WHEN lower(description)
 LIKE '%sushi%' THEN 'resturaunt'
    WHEN lower(description)
 LIKE '%amzn%' THEN 'misc'
    WHEN lower(description)
 LIKE '%east%coast%' THEN 'moving'
    WHEN lower(description)
 LIKE '%leon%' THEN 'car'
    WHEN lower(description)
 LIKE '%steakhouse%' THEN 'resturaunt'
    WHEN lower(description)
 LIKE '%grand cafe%' THEN 'resturaunt'
    WHEN lower(description)
 LIKE '%hatzedaka%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%charity%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%ambetter%' THEN 'health ins'
    WHEN lower(description)
 LIKE '%grove kosher%' THEN 'groceries'
    WHEN lower(description)
 LIKE '%pizz%' THEN 'resturaunt'
    WHEN lower(description)
 LIKE '%supercuts%' THEN 'haircut'
    WHEN lower(description)
 LIKE '%zelle%kollel%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%chesed%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%sammys%' THEN 'resturaunt'
    WHEN lower(description)
 LIKE '%webce%' THEN 'misc'
    WHEN lower(description)
 LIKE '%httpsafna%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%youtube%' THEN 'subscription'
    WHEN lower(description)
 LIKE '%petrol%' THEN 'car'
    WHEN lower(description)
 LIKE '%save as you go%' THEN 'savings'
    WHEN lower(description)
 LIKE '%chasodim%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%kneset mordechai%' THEN 'tzedaka'
    WHEN lower(description)
 LIKE '%yitzy%' THEN 'misc'
    WHEN description
 LIKE '%CENTRAL TZEDAKA%' THEN 'tzedaka'
    WHEN description
 LIKE '%RECURRING PAYMENT AUTHORIZED ON 08/22 GOOGLE%' THEN 'subscription'
    WHEN lower(description)
 LIKE '%united%' THEN 'travel'
    WHEN lower(description)
 LIKE '%haagen%' THEN 'resturaunt'
    WHEN description
 LIKE '*Twitter' THEN 'subscription'
    WHEN description
LIKE '%WINN-DIXIE%' THEN 'groceries'
    WHEN lower(description)
LIKE '%wal%mart%' THEN 'groceries'
    WHEN description
LIKE 'ONLINE TRANSFER TO SIMON ' THEN 'savings'
    WHEN description
LIKE '%SQ*FRANCIS%' THEN 'tzedaka'
    WHEN description
LIKE 'AHAVAS CHESED' THEN 'tzedaka'
    WHEN description
LIKE '%LADIES%BIKUR%CHOLI%'THEN 'tzedaka'
    WHEN description
LIKE '%VSI*PARKS%' THEN 'outing'
    WHEN lower(description)
LIKE '%arons%kissena%' THEN 'groceries'
    WHEN lower(description)
LIKE '%fidelis%' THEN 'health ins'
    WHEN lower(description)
LIKE '%walgreens%' THEN 'misc'
    WHEN lower(description)
LIKE 'sunoco' THEN 'car'
    WHEN lower(description)
LIKE 'verizon' THEN 'wifi'
    WHEN lower(description)
LIKE '%golan%' THEN 'resturaunt'
    WHEN lower(description)
LIKE '%chop%chop%' THEN 'resturaunt'
    WHEN lower(description)
LIKE 'shop smart' THEN 'groceries'
    WHEN lower(description)
LIKE 'dunkin' THEN 'resturaunt'
    WHEN lower(description)
LIKE '%exxon%' THEN 'car'
    WHEN lower(description)
LIKE 'mikail' THEN 'haircut'
    WHEN lower(description)
LIKE 'photobooth' THEN 'outing'
    WHEN lower(description)
LIKE 'parking' THEN 'outing'
    WHEN lower(description)
LIKE 'mikvah' THEN 'misc'
    WHEN lower(description)
LIKE 'nebel mommy' THEN 'misc'
    WHEN lower(description)
LIKE '%transfer%' THEN 'transfer'
   WHEN description 
LIKE '%online transfer to simon d%' THEN 'transfer'
   WHEN description 
LIKE 'VSI*PARKS' THEN 'outing'
   WHEN description 
LIKE '%SQ%LAKEWOOD%' THEN 'tzedaka'
   WHEN lower(description)
LIKE '%francis%' THEN 'tzedaka'
   WHEN lower(description)
LIKE '%tzedakah%' THEN 'tzedaka'
   WHEN lower(description)
LIKE '%old navy%' THEN 'misc'
   WHEN lower(description)
LIKE '%geico%' THEN 'car'
   WHEN description
LIKE '%ARIEL%DELICIOUS%' THEN 'resturaunt'
   WHEN description
LIKE '%CHASDEI MEIR%' THEN 'tzedaka'
   WHEN description
LIKE '%HAROLD WEISSMAN%' THEN 'Doctor'
   WHEN lower(description)
LIKE '%cafe%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%party city%' THEN 'misc'
   WHEN lower(description)
LIKE '%delta%' THEN 'travel'
   WHEN lower(description)
LIKE '%cmsvend%' THEN 'resturaunt'
   WHEN description
LIKE '%IDEMIA TSA PRECHEC%' THEN 'travel'
   WHEN description
LIKE '%7-ELEVEN%' THEN 'resturaunt'
   WHEN description
LIKE '%CHINA BISTRO%' THEN 'resturaunt'
   WHEN description
LIKE '%SHELL OIL%' THEN 'car'
   WHEN description
LIKE '%CVS/PHARMACY%' THEN 'misc'
   WHEN description
LIKE '%SHAAREI TZION%' THEN 'tzedaka'
   WHEN description
LIKE '%E-Z*PASSNY%' THEN 'car'
   WHEN description
LIKE '%MIKAIL%' THEN 'haircut'
   WHEN description
LIKE '%SAMMY%' THEN 'resturaunt'
   WHEN description
LIKE '%SUNOCO%' THEN 'car'
   WHEN description
LIKE '%TCF-TORAS%' THEN 'tzedaka'
   WHEN lower(description)
LIKE '%rock%roll%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%lukoil%' THEN 'car'
   WHEN lower(description)
LIKE '%segel%' THEN 'bris'
   WHEN lower(description)
LIKE '%paraking%gara%' THEN 'misc'
   WHEN lower(description)
LIKE '%mikvah%' THEN 'misc'
   WHEN lower(description)
LIKE '%nebel%mommy%' THEN 'misc'
   WHEN lower(description)
LIKE '%verizon%' THEN 'wifi'
   WHEN lower(description)
LIKE '%nycdot parking%' THEN 'outing'
   WHEN lower(description)
LIKE '%exxonmobile%' THEN 'car'
   WHEN lower(description)
LIKE '%dunkin%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%shop%smart%' THEN 'groceries'
   WHEN lower(description)
LIKE '%psy%fid%' THEN 'health ins'
   WHEN lower(description)
LIKE '%hudson%' THEN 'outing'
   WHEN lower(description)
LIKE '%meal%mart%' THEN 'groceries'
   WHEN lower(description)
LIKE '%auto%boss%' THEN 'car'
   WHEN lower(description)
LIKE '%schreibers%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%david%cleaners%' THEN 'misc'
   WHEN lower(description)
LIKE '%mta%nyct%' THEN 'misc'
   WHEN lower(description)
LIKE '%pys%fid%' THEN 'health ins'
   WHEN lower(description)
LIKE '%congregation%ohel%' THEN 'tzedaka'
   WHEN lower(description)
LIKE '%non%wells%atm%' THEN 'misc'
   WHEN lower(description)
LIKE '%d%&%j%' THEN 'car'
   WHEN lower(description)
LIKE '%non-wf%atm%' THEN 'misc'
   WHEN lower(description)
LIKE '%wealth%of%health%' THEN 'misc'
   WHEN lower(description)
LIKE '%google%' THEN 'subscription'
   WHEN lower(description)
LIKE '%american%air%' THEN 'travel'
   WHEN lower(description)
LIKE '%rite%aid%' THEN 'misc'
   WHEN lower(description)
LIKE '%photobooth%' THEN 'outing'
   WHEN lower(description)
LIKE '%parking%' THEN 'outing'
   WHEN lower(description)
LIKE '%bp%' THEN 'car'
   WHEN lower(description)
LIKE '%heimish%' THEN 'groceries'
   WHEN lower(description)
LIKE '%zelle%asadi%' THEN 'misc'
   WHEN lower(description)
LIKE '%kohl%' THEN 'misc'
   WHEN lower(description)
LIKE '%venmo%' THEN 'misc'
   WHEN lower(description)
LIKE '%speedway%' THEN 'car'
   WHEN lower(description)
LIKE '%autozone%' THEN 'car'
   WHEN lower(description)
LIKE '%upper%cru%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%kosher%bagels%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%surgeons%' THEN 'Doctor'
   WHEN lower(description)
LIKE '%fpl%' THEN 'utilities'
   WHEN lower(description)
LIKE '%fpl%' THEN 'utilities'
   WHEN lower(description)
LIKE '%maintenance%fee%' THEN 'misc'
   WHEN lower(description)
LIKE '%amazing%savings%' THEN 'misc'
   WHEN lower(description)
LIKE '%yih%' THEN 'misc'
   WHEN lower(description)
LIKE '%payrange%' THEN 'misc'
   WHEN lower(description)
LIKE '%target%' THEN 'misc'
   WHEN lower(description)
LIKE '%chatbooks%' THEN 'misc'
   WHEN lower(description)
LIKE '%snapfish%' THEN 'misc'
   WHEN lower(description)
LIKE '%spotify%' THEN 'subscription'
   WHEN lower(description)
LIKE '%apple%com%' THEN 'subscription'
   WHEN lower(description)
LIKE '%noom%' THEN 'subscription'
   WHEN lower(description)
LIKE '%starbucks%' THEN 'resturaunt'
   WHEN lower(description)
LIKE '%lafamilia%' THEN 'travel'
   WHEN lower(description)
LIKE '%costco%' THEN 'groceries'
   WHEN lower(description)
LIKE '%bnai%sephardim%' THEN 'misc'
   WHEN lower(description)
LIKE '%laboratory%' THEN 'Doctor'
   WHEN lower(description)
LIKE '%mint%mobile%' THEN 'misc'
   WHEN lower(description)
LIKE '%zelle%' THEN 'misc'
   WHEN lower(description)
LIKE '%monthly%service%fee%' THEN 'misc'
   WHEN lower(description)
LIKE '%simons%active%tr%' THEN 'Active Trade Salary'
   WHEN lower(description)
LIKE '%h&a%property%payroll%' THEN 'Sarah Salary'
   WHEN lower(description)
LIKE '%payment%to%daniel%simon%for%invoice%' THEN 'Paypal Art Comm'
   WHEN lower(description)
LIKE '%tiki dental%' THEN 'Doctor'
   WHEN lower(description)
LIKE '%udemy%' THEN 'misc'
   WHEN lower(description)
LIKE '%oscar%' THEN 'health ins'
   WHEN lower(description)
LIKE '%tires%' THEN 'car'
   WHEN lower(description)
LIKE '%dept%education%' THEN 'misc'
   WHEN lower(description)
LIKE '%express%checkout%payment%' THEN 'Paypal Art Comm'
   WHEN lower(description)
LIKE '%User%Initiated%Withdrawal% %' THEN 'transfer'


ELSE 'uncatergorized' 
END
  AS category,
    amount AS amount
FROM
  transactions_debits_credits
  WHERE date>= (SELECT MIN(date) FROM bank-408715.spending_history.sarah_transactions_v )

ORDER BY
  year DESC,
  month desc)
  Select * from transaction_data where lower(category) != 'transfer'
--   AND lower(description) != 'User Initiated Withdrawal'
