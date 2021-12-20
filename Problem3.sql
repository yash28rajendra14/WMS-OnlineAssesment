
-- create
CREATE TABLE post (
  id INTEGER PRIMARY KEY,
  content TEXT NOT NULL
);

-- insert
INSERT INTO post VALUES (1, 'The name of the SBI has been synonymous with trustworthy banking for decades. Since its inception in the 1800s, the bank has come a long way. The SBI student loan schemes are considered to be some of the best in the country, as the policies on the basis of which they were formed very much resonate to the common man. Even in this day and age, a majority of the Indian population prefers SBI to borrow an education loan from, due to its reliable way of conducting business.');
INSERT INTO post VALUES (2, 'Even though it is one of the oldest functioning banks in the country, SBI has thoroughly updated its banking policies to suit the changing times. This brings us to the topic of discussion of todays article, the SBI student loan calculator.');
INSERT INTO post VALUES (3, 'If you are looking to borrow an education loan but are not sure about its particulars, then the SBI student loan calculator is the right tool for you to get started on your education loan journey.');
INSERT INTO post VALUES (4, 'It is perhaps the first of its kind of self-help tools that can be used to plan the student loan process in a hassle-free manner. However, before we take a deeper look at how students can use this tool to their benefit, let us take a brief look at the various education loan schemes offered by State bank of India for higher studies.');
INSERT INTO post VALUES (5, 'SBI has introduced two different education loan schemes for higher education. These schemes cater to the financial needs of borrowers who need an education loan to study in India, as well as abroad. Here is a brief overview of each of these schemes and the benefits.');
INSERT INTO post VALUES (6, 'The SBI Global Ed-Vantage Scheme is a collateral education loan scheme that has been exclusively put together for students who wish to pursue their higher education in notable, prestigious universities in countries like the USA, Canada, Germany, etc. This SBI education loan is granted especially to students who have secured admission for professional degrees like Masters, PhD & M.Phil courses in universities and colleges abroad.');

-- fetch 

SELECT id,content
FROM post
WHERE content LIKE '%SBI Loan%'
ORDER BY
  CASE
    WHEN content LIKE 'SBI Loan' THEN 1
    WHEN content LIKE 'SBI Loan%' THEN 2
    WHEN content LIKE '%SBI Loan' THEN 4
    ELSE 3
  END
