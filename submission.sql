\d forum_posts
-- to get more details about the forum_posts table:
-- Columns = id, title, content, date, author
-- type =  text, text, text, timestamp(3), without time zone, text

SELECT author, title, date FROM forum_posts WHERE date >= '2048-04-01' AND date < '2048-05-01' AND content ILIKE '%emptystack%';
-- basically show me all forum posts from april 2048 where the content mentions 'EmptyStack' and give me the author, title, and date.
-- the result are author: steep-mechanic-65 | title: Argentum cubitum patrocinor totus utroque deleo temperantia. | date: 2048-04-02 12:50:36.588
-- &&  author: smart-money-44 | title: Get rich fast | date: 2048-04-08 00:00:00

\d forum_accounts
-- to get more details about the forum_accounts table
-- Columns = username, first_name, last_name
-- all are text type

SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
-- From the forum_accounts table, find the row for the user named 'smart-money-44' and show me everything about this user.
--    username: smart-money-44    | first_name: Brad   | last_name : Steele

SELECT * FROM forum_accounts WHERE last_name = 'Steele';
-- Find all other accounts with the same last name of Steele
-- username: sharp-engine-57 | first_name: Andrew   | last_name: Steele
-- username: stinky-tofu-98 | first_name: Kevin     | last_name: Steele

\d emptystack_accounts
-- to get more details about the emptystack_accounts table
-- Columns = username, password, first_name, last_name
-- all are text type

SELECT * FROM emptystack_accounts Where last_name ILIKE 'Steele';
-- From the emptystack_accounts table, show me all columns for every row where the last name is Steele.
-- the results are username: triple-cart-38 | password: password456 | first_name: Andrew     | last_name: Steele
-- and username: lance-main-11 | password: password789 | first_name: Lance     | last_name: Steele

-- got this message after logging in with the triple-cart-38 username:
-- Welcome, triple-cart-38!
-- Loading messages and projects...
-- Your data has been loaded to emptystack.sql. Have a nice day!

\d emptystack_messages
-- to get more details about the emptystack_messages table
-- Columns = id, from, to, subject, body
-- all are text type

SELECT * FROM emptystack_messages where BODY ILIKE '%taxi%' OR subject ILIKE '%taxi%';
-- From the emptystack_messages table, show me all the columns for every row where taxi is mentioned.
-- the results gave me id: LidWj, from: your-boss-99, to: triple-cart-38, subject:  Project TAXI, body: Deploy Project TAXI by end of week. We need this out ASAP.

SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99'
-- From the emptystack_accounts table, show me everything that has the username "your-boss-99"
-- the results gave me username: your-boss-99 | password: notagaincarter | first_name: Skylar | last_name: Singer

\d emptystack_projects
-- to get more details about the emptystack_projects table
-- Columns = id, code
-- all are text type

SELECT * FROM emptystack_projects WHERE code ILIKE '%TAXI%'
-- FROM the emptystacks_project table show me all columns for every row where code contains "TAXI"
-- got result id: DczE0v2b | code: TAXI

        -- SHUTDOWN SUCCESFUL --
-- WARNING: admin access required. Unauthorized access will be logged.
-- Username: your-boss-99
-- Password: notagaincarter
-- Welcome, your-boss-99.
-- Project ID: DczE0v2b
-- Initiating project shutdown sequence...
-- 5...
-- 4...
-- 3...
-- 2...
-- 1...
-- Project shutdown complete.