
So far, we've just been working with one table at a time, and seeing what interesting data we can select out of that table. But actually, most of the time, we have our data distributed across multiple tables, and those tables are "related" to each other in some way.
For example, let's say we have a table for logging how well students do on their tests, and we include emails in case we need to email parents about slipping grades:

student_name	student_email	test	grade
____________________________________________

Peter Rabbit	peter@rabbit.com	Nutrition	95

Alice Wonderland	alice@wonderland.com	Nutrition	92

Peter Rabbit	peter@rabbit.com	Chemistry	85

Alice Wonderland	alice@wonderland.com	Chemistry	95



We might also have a table for logging what books each student reads:

student_name	book_title	book_author
________________________________________

Peter Rabbit	The Tale of Mrs. Tiggy-Winkle	Beatrix Potter

Peter Rabbit	Jabberwocky	Lewis Carroll

Alice Wonderland	The Hunting of the Snark	Lewis Carroll

Alice Wonderland	Jabberwocky	Lewis Carroll



We might also have a table just for detailed student information:

id	student_first	student_last	student_email	phone	birthday
________________________________________________________________

1	Peter	Rabbit	peter@rabbit.com	555-6666	2001-05-10

2	Alice	Wonderland	alice@wonderland.com	555-4444	2001-04-02


What do you think of these tables? Would you change them in any way?
There is one big thing to realize about these tables: they are describing relational data - as in, they are describing data that relates to each other. Each of these tables describe data related to a particular student, and many of the tables replicate the same data. When the same data is replicated across multiple tables, there can be interesting consequences.


For example, what if a student's email changed? Which tables would we need to change?
We'd need to change the student information table, but since we also included that data in the grades table, we'd also have to find every row about that student, and change the email there too.
It's often preferable to make sure that a particular column of data is only stored in a single location, so there are fewer places to update and less risk of having different data in different places. If we do that, we need to make sure we have a way to relate the data across the tables, which we'll get to later.
Let's say we decide to remove email from the grades table, because we realize it's redundant with the email in the student details table. This is what we'd have:

student_name	test	grade
___________________________

Peter Rabbit	Nutrition	95

Alice Wonderland	Nutrition	92

Peter Rabbit	Chemistry	85

Alice Wonderland	Chemistry	95

How could we figure out the email for each student? We could find the row in the student info table, matching by name. What if 2 students had the same name? (Did you know that in Bali, every person has only 1 of 4 possible first names?) We can't rely on name to look up a student, and really, we should never rely on something like name to identify anything uniquely in a table.
So the best thing to do is to remove the student_name and replace that with student_id, since that is a guaranteed unique identifier:

student_id	test	grade
___________________________
1	Nutrition	95

2	Nutrition	92

1	Chemistry	85

2	Chemistry	95

We would make the same change to our books table, using student_id instead of student_name:
student_id	book_title	book_author
______________________________________
1	The Tale of Mrs. Tiggy-Winkle	Beatrix Potter

1	Jabberwocky	Lewis Carroll

2	The Hunting of the Snark	Lewis Carroll

2	Jabberwocky	Lewis Carroll

Notice how we have the title and author repeated twice for Jabberwocky? That's another warning sign that we could break our table up into multiple related tables, so that we don't have to update multiple places if something changes about a book.
We could have a table just about books:

id	book_title	book_author
_______________________________
1	The Tale of Mrs. Tiggy-Winkle	Beatrix Potter

2	Jabberwocky	Lewis Carroll

3	The Hunting of the Snark	Lewis Carroll

And then our student_books table becomes:

student_id	book_id
______________________
1	1

1	2

2	3

2	2

I know, this table doesn't look nearly as readable as the old table that had all of information stuffed into every row. But, tables are often not designed to be readable to humans-- they're designed to be the easiest to maintain and least prone to bugs. In many cases, it may be best to split information into multiple related tables, so that there is less redundant data and fewer places to update.
It's important to understand how to use SQL to deal with data that has been split up into multiple related tables, and bring the data back together across the tables when you need it. We do that using a concept called "join"s and that's what I'll show you next.
