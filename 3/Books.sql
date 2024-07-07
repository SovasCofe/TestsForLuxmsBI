SELECT a.name_author, b.title, COUNT(bb.book_id) as "Количество"
FROM author AS a
JOIN book AS b ON a.author_id = b.author_id
JOIN buy_book AS bb ON b.book_id = bb.book_id
GROUP by bb.book_id,a.name_author, b.title
ORDER BY a.name_author, b.title