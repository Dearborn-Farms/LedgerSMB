begin;
-- UCOA Form 990
--
SELECT account_heading_save(NULL,'1000','Cash', NULL);
SELECT account_save(NULL,'1010','Cash in bank-operating','A','45', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false);
SELECT account_save(NULL,'1020','Cash in bank-payroll','A','45', NULL, false, false, string_to_array('AP_paid', ':'), false);
SELECT account_save(NULL,'1040','Petty cash','A','45', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false);
SELECT account_save(NULL,'1070','Savings & short-term investments','A','46', NULL, false, false, string_to_array('', ':'), false);
SELECT cr_coa_to_account_save(accno, accno || '--' || description)
FROM account WHERE accno in ('1010', '1020', '1040', '1070');

SELECT account_heading_save(NULL,'1100','Accounts receivable', NULL);
SELECT account_save(NULL,'1110','Accounts receivable','A','47a', NULL, false, false, string_to_array('AR', ':'), false);
SELECT account_save(NULL,'1115','Doubtful accounts allowance','A','47b', NULL, true, false, string_to_array('AR_paid', ':'), false);
SELECT account_heading_save(NULL,'1200','Contributions receivable', NULL);
SELECT account_save(NULL,'1210','Pledges receivable','A','48a', NULL, false, false, string_to_array('AR', ':'), false);
SELECT account_save(NULL,'1215','Doubtful pledges allowance','A','48b', NULL, true, false, string_to_array('AR_paid', ':'), false);
SELECT account_save(NULL,'1225','Discounts - long-term pledges','A','48a', NULL, true, false, string_to_array('AR_paid', ':'), false);
SELECT account_save(NULL,'1240','Grants receivable','A','49', NULL, false, false, string_to_array('AR', ':'), false);
SELECT account_save(NULL,'1245','Discounts - long-term grants','A','49', NULL, true, false, string_to_array('AR_paid', ':'), false);
SELECT account_heading_save(NULL,'1300','Other receivables', NULL);
SELECT account_save(NULL,'1310','Employee & trustee receivables','A','50', NULL, false, false, string_to_array('AR', ':'), false);
SELECT account_save(NULL,'1320','Notes/loans receivable','A','51a', NULL, false, false, string_to_array('AR', ':'), false);
SELECT account_save(NULL,'1325','Doubtful notes/loans allowance','A','51b', NULL, true, false, string_to_array('AR_paid', ':'), false);
SELECT account_heading_save(NULL,'1400','Other assets', NULL);
SELECT account_save(NULL,'1410','Inventories for sale','A','52', NULL, false, false, string_to_array('IC', ':'), false);
SELECT account_save(NULL,'1420','Inventories for use','A','52', NULL, false, false, string_to_array('IC', ':'), false);
SELECT account_save(NULL,'1450','Prepaid expenses','A','53', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1460','Accrued revenues','A','47a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'1500','Investments', NULL);
SELECT account_save(NULL,'1510','Marketable securities ','A','54', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1530','Land held for investment','A','55a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1540','Buildings held for investment','A','55a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1545','Accum deprec - bldg investment','A','55b', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1580','Investments - other','A','56', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'1600','Fixed operating assets', NULL);
SELECT account_save(NULL,'1610','Land - operating','A','57a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1620','Buildings - operating','A','57a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1630','Leasehold improvements','A','57a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1640','Furniture, fixtures, & equip','A','57a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1650','Vehicles','A','57a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1660','Construction in progress','A','57a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'1700','Accum deprec - fixed operating assets', NULL);
SELECT account_save(NULL,'1725','Accum deprec - building','A','57b', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1735','Accum amort - leasehold improvements','A','57b', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1745','Accum deprec - furn,fix,equip','A','57b', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1755','Accum deprec - vehicles','A','57b', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1810','Other long-term assets','A','58', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1850','Split-interest agreements','A','58', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1910','Collections - art, etc','A','58', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'1950','Funds held in trust by others','A','58', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'2000','Payables', NULL);
SELECT account_save(NULL,'2010','Accounts payable','L','60', NULL, false, false, string_to_array('AP', ':'), false);
SELECT account_save(NULL,'2020','Grants & allocations payable','L','61', NULL, false, false, string_to_array('AP', ':'), false);
SELECT account_heading_save(NULL,'2100','Accrued liabilities', NULL);
SELECT account_save(NULL,'2110','Accrued  payroll','L','60', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2120','Accrued paid leave','L','60', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2130','Accrued payroll taxes','L','60', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2140','Accrued sales taxes','L','60', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2150','Accrued expenses - other','L','60', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'2300','Unearned/deferred revenue', NULL);
SELECT account_save(NULL,'2310','Deferred contract revenue','L','62', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2350','Unearned/deferred revenue - other','L','62', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2410','Refundable advances','L','62', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'2500','Short-term notes & loans payable', NULL);
SELECT account_save(NULL,'2510','Trustee & employee loans payable','L','63', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2550','Line of credit','L','65', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2560','Current portion - long-term loan','L','65', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2570','Short-term liabilities - other','L','65', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2610',' Split-interest liabilities','L','65', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'2700','Long-term notes & loans payable', NULL);
SELECT account_save(NULL,'2710','Bonds payable','L','64a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2730','Mortgages payable','L','64b', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2750','Capital leases','L','64b', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2770','Long-term liabilities - other','L','64a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2810','Gov\'t-owned fixed assets liability','L','65', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'2910','Custodial funds','L','65', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'3000','Unrestricted net assets', NULL);
SELECT account_save(NULL,'3010','Unrestricted net assets','Q','21&67', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'3020','Board-designated net assets','Q','21&67', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'3030','Board designated quasi-endowment','Q','21&67', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'3040','Fixed operating net assets','Q','21&67', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'3100','Temporarily restricted net assets', NULL);
SELECT account_save(NULL,'3110','Use restricted net assets','Q','21&68', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'3120','Time restricted net assets','Q','21&68', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'3200','Permanently restricted net assets', NULL);
SELECT account_save(NULL,'3210','Endowment net assets','Q','21&69', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'4000','Revenue from direct contributions', NULL);
SELECT account_save(NULL,'4010','Individual/small business contributions','I','1a', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false);
SELECT account_save(NULL,'4020','Corporate contributions','I','1a', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false);
SELECT account_save(NULL,'4070','Legacies & bequests','I','1a', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4075','Uncollectible pledges - estimated','I','contra1a', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'4085','Long-term pledges discount','I','contra1a', NULL, true, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'4100','Donated goods & services revenue', NULL);
SELECT account_save(NULL,'4110','Donated professional services-GAAP','I','PartIV-A&82b', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4120','Donated other services - non-GAAP','I','PartIV-A&82b', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4130','Donated use of facilities','I','PartIV-A&82b', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4140','Gifts in kind - goods','I','1d', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false);
SELECT account_save(NULL,'4150','Donated art, etc','I','1d', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false);
SELECT account_heading_save(NULL,'4200','Revenue from non-government grants', NULL);
SELECT account_save(NULL,'4210','Corporate/business grants','I','1a', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4230','Foundation/trust grants','I','1a', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4250','Nonprofit organization grants','I','1a', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4255','Discounts - long-term grants','I','contra1a', NULL, true, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'4300','Revenue from split-interest agreements', NULL);
SELECT account_save(NULL,'4310','Split-interest agreement contributions','I','1a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'4350','Gain (loss) split-interest agreements','I','20', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'4400','Revenue from indirect contributions', NULL);
SELECT account_save(NULL,'4410','United Way or CFC contributions','I','1b', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4420','Affiliated organizations revenue','I','1b', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4430','Fundraising agencies revenue','I','1b', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_heading_save(NULL,'4500','Revenue from government grants', NULL);
SELECT account_save(NULL,'4510','Agency (government) grants','I','1c', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4520','Federal grants','I','1c', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4530','State grants','I','1c', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'4540','Local government grants','I','1c', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_heading_save(NULL,'5000','Revenue from government agencies', NULL);
SELECT account_save(NULL,'5010','Agency (government) contracts/fees','I','2&93(g)', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5020','Federal contracts/fees','I','2&93(g)', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5030','State contracts/fees','I','2&93(g)', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5040','Local government contracts/fees','I','2&93(g)', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5080','Medicare/Medicaid payments','I','2&93f', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'5100','Revenue from program-related sales & fees', NULL);
SELECT account_save(NULL,'5180','Program service fees','I','2&93(a)', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5185','Bad debts, est - program fees','I','2&93(a)', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'5200','Revenue from dues', NULL);
SELECT account_save(NULL,'5210','Membership dues-individuals','I','3&94', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false);
SELECT account_save(NULL,'5220','Assessments and dues-organizations','I','3&94', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false);
SELECT account_heading_save(NULL,'5300','Revenue from investments', NULL);
SELECT account_save(NULL,'5310','Interest-savings/short-term investments','I','4&95', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5320','Dividends & interest - securities','I','5&96', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5330','Real estate rent - debt-financed','I','6a&97a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5335','Real estate rental cost - debt-financed','I','6b&97a', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5340','Real estate rent - not debt-financed','I','6a&97b', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5345','Real estate rental cost - not debt-financed','I','6b&97b', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5350','Personal property rent','I','6a&98', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5355','Personal property rental cost','I','6b&98', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5360','Other investment income','I','7&99', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5370','Securities sales - gross','I','8a-(A)&100', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5375','Securities sales cost ','I','8b-(A)&100', NULL, true, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'5400','Revenue from other sources', NULL);
SELECT account_save(NULL,'5410','Non-inventory sales - gross','I','8a-(B)&100', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false);
SELECT account_save(NULL,'5415','Non-inventory sales cost ','I','8b-(B)&100', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5440','Gross sales - inventory','I','10a&102', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false);
SELECT account_save(NULL,'5445','Cost of inventory sold ','I','10b&102', NULL, true, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'5450','Advertising revenue','I','11&103', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5460','Affiliate revenues from other entities','I','11&103', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5490','Misc revenue','I','11&103', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_heading_save(NULL,'5800','Special events', NULL);
SELECT account_save(NULL,'5810','Special events - non-gift revenue','I','9a&101', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_save(NULL,'5820','Special events - gift revenue','I','1a&(9a)', NULL, false, false, string_to_array('AR_amount', ':'), false);
SELECT account_heading_save(NULL,'6800','Unrealized gain (loss)', NULL);
SELECT account_save(NULL,'6810','Unrealized gain (loss) - investments','I','PartIV-A', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'6820','Unrealized gain (loss) - other assets','I','PartIV-A', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'6900','Net assets released from restriction', NULL);
SELECT account_save(NULL,'6910','Satisfaction of use restriction','I','', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'6920','LB&E acquisition satisfaction','I','', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'6930','Time restriction satisfaction','I','', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'7000','Grantscts, & direct assistance', NULL);
SELECT account_save(NULL,'7010','Contracts - program-related','E','22', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7020','Grants to other organizations','E','22', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7040','Awards & grants - individuals','E','22', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7050','Specific assistance - individuals','E','23', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7060','Benefits paid to or for members','E','24', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_heading_save(NULL,'7200','Salaries & related expenses', NULL);
SELECT account_save(NULL,'7210','Officers & directors salaries','E','25', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'7220','Salaries & wages - other','E','26', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'7230','Pension plan contributions','E','27', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'7240','Employee benefits - not pension','E','28', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'7250','Payroll taxes, etc.','E','29', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'7500','Contract service expenses', NULL);
SELECT account_save(NULL,'7510','Fundraising fees','E','30', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7520','Accounting fees','E','31', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7530','Legal fees','E','32', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7540','Professional fees - other','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7550','Temporary help - contract','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7580','Donated professional services - GAAP','E','PartIV-B,82b', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'7590','Donated other services - non-GAAP','E','PartIV-B,82b', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_heading_save(NULL,'8100','Nonpersonnel expenses', NULL);
SELECT account_save(NULL,'8110','Supplies','E','33', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8120','Donated materials & supplies','E','33', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8130','Telephone & telecommunications','E','34', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8140','Postage & shipping','E','35', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8150','Mailing services','E','35', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8170','Printing & copying','E','38', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8180','Books, subscriptions, references','E','38', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8190','In-house publications','E','38', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_heading_save(NULL,'8200','Facility & equipment expenses', NULL);
SELECT account_save(NULL,'8210','Rent, parking, other occupancy','E','36', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8220','Utilities','E','36', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8230','Real estate taxes','E','36', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'8240','Personal property taxes','E','36', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'8250','Mortgage interest','E','36', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8260','Equipment rental & maintenance','E','37', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8270','Deprec & amort - allowable','E','42', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'8280','Deprec & amort - not allowable','E','42', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'8290','Donated facilities ','E','PartIV-B,82b', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'8300','Travel & meetings expenses', NULL);
SELECT account_save(NULL,'8310','Travel','E','39', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8320','Conferences, conventions, meetings','E','40', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_heading_save(NULL,'8500','Other expenses', NULL);
SELECT account_save(NULL,'8510','Interest-general','E','41', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8520','Insurance - non-employee related','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8530','Membership dues - organization','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8540','Staff development','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8550','List rental','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8560','Outside computer services','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8570','Advertising expenses','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8580','Contingency provisions','E','43', NULL, false, false, string_to_array('AP_amount', ':'), false);
SELECT account_save(NULL,'8590','Other expenses','E','43', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false);
SELECT account_heading_save(NULL,'8600','Business expenses', NULL);
SELECT account_save(NULL,'8610','Bad debt expense ','E','43', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'8620','Sales taxes','E','43', NULL, false, false, string_to_array('AP_tax', ':'), false);
SELECT account_save(NULL,'8630','UBITaxes ','E','43', NULL, false, false, string_to_array('AP_tax', ':'), false);
SELECT account_save(NULL,'8650','Taxes - other','E','43', NULL, false, false, string_to_array('AP_tax', ':'), false);
SELECT account_save(NULL,'8660','Fines, penalties, judgments','E','43', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'8670','Organizational (corp) expenses','E','43', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'9800','Fixed asset purchases ', NULL);
SELECT account_save(NULL,'9810','Capital purchases - land','A','capitalized', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'9820','Capital purchases - building','A','capitalized', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'9830','Capital purchases - equipment','A','capitalized', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'9840','Capital purchases - vehicles','A','capitalized', NULL, false, false, string_to_array('', ':'), false);
SELECT account_heading_save(NULL,'9900','Other Allocations', NULL);
SELECT account_save(NULL,'9910','Payments to affiliates','E','16', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'9920','Additions to reserves','E','', NULL, false, false, string_to_array('', ':'), false);
SELECT account_save(NULL,'9930','Program administration allocations','E','', NULL, false, false, string_to_array('', ':'), false);
--
insert into tax (chart_id,rate) values ((select id from chart where accno = '8620'),0);
insert into tax (chart_id,rate) values ((select id from chart where accno = '8630'),0);
insert into tax (chart_id,rate) values ((select id from chart where accno = '8650'),0);
--
INSERT INTO defaults (setting_key, value) VALUES ('inventory_accno_id', (select id from chart where accno = '1410'));

 INSERT INTO defaults (setting_key, value) VALUES ('income_accno_id', (select id from chart where accno = '4010'));

 INSERT INTO defaults (setting_key, value) VALUES ('expense_accno_id', (select id from chart where accno = '7510'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxgain_accno_id', (select id from chart where accno = '5490'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxloss_accno_id', (select id from chart where accno = '8590'));

 INSERT INTO defaults (setting_key, value) VALUES ('curr', 'USD');

 INSERT INTO defaults (setting_key, value) VALUES ('weightunit', 'lbs');

commit;
UPDATE account
   SET tax = true
WHERE id
   IN (SELECT account_id
       FROM account_link
       WHERE description LIKE '%_tax');

