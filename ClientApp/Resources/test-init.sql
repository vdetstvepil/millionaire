--- Тестовый список вопросов для игры
--- Используется СУБД SQLite

--- Создание таблицы списка вопросов
CREATE VIRTUAL TABLE questions (
	id INTEGER AUTOINCREMENT PRIMARY KEY, 
	level_number INTEGER,
	question_text VARCHAR(1000), 
	variant_a VARCHAR(200), 
	variant_b VARCHAR(200), 
	variant_c VARCHAR(200), 
	variant_d VARCHAR(200), 
	variant_true VARCHAR(1)
	);

--- Вставка вопросов в таблицу
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (1, 'Чему равен периметр ромба со стороной 2 м?', '4 метра', '6 литров', '8 метров квадратных', '8 метров', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (1, 'Кого рыбак всегда видит издалека?', 'Рыбака', 'Рыбнадзор', '6 литров', 'Червяка', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (2, 'Как звали пушкинского Онегина?', 'Михаил', 'Иван', 'Евгений', 'Александр', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (2, 'Вокруг чего обводят одураченного субъекта?', 'Поля чудес', 'Пальца', 'Здания мэрии', 'Собственной оси', 'B');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (3, 'Так называются дополнения к основному сюжету игры?', 'Аддон', 'Скилл', 'Апгрейд', 'Сториап', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (3, 'Какое из этих женских имен в переводе с латинского означает "Победа"?', 'Капитолина', 'Ноябрина', 'Виктория', 'Олимпиада', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (4, 'Что даёт дерево сорта антоновка?', 'Груши', 'Мандарины', 'Яблоки', 'Апельсины', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (4, 'Какую из этих аббревиатур на всю жизнь запомнят миллионы обманутых вкладчиков?', 'МММ', 'ДДТ', 'КЛМ', 'АКМ', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (5, 'Какой вопрос, по определению, не требует ответа?', 'Экзаменационный', 'Философский', 'Риторический', 'Каверзный', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (5, 'Какой родственник стоит на первом месте по числу сложенных про него анекдотов?', 'Сноха', 'Тёща', 'Шурин', 'Зять', 'B');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (6, 'Кто живёт в Австралии?', 'Ехидна', 'Дюдюка Барбидокская', 'Хитрюга', 'Злыдня', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (6, 'Какой общий ингредиент есть у эскимо и колбасы?', 'Молоко', 'Шоколад', 'Сахар', 'Все ответы верны', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (7, '8	Сколько процентов из жизни ленивцы проводят во сне?', '85%', '75%', '70%', '60%', 'B');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (7, 'Сколько стран входит в состав Великобритании?', '1', '3', '4', '6', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (8, 'Как называется боязнь глубины?', 'Гидрофобия', 'Кимофобия', 'Таласофобия', 'Батофобия', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (8, 'Какую форму имеет самый большой и знаменитый канал Венеции - Канал Гранд(Большой канал)?', 'Буквы S', 'Почти прямой', 'Овал', 'Буквы U', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (9, 'Именно в этой стране в 1956 году впервые прошёл ежегодный музыкальный конкурс Евровидение?', 'Великобритания', 'Италия', 'Франция', 'Швейцария', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (9, 'Через какую папку можно дефрагментировать диск в 95 Windows?', 'Мой компьютер', 'Мои документы', 'Сетевое окружение', 'Корзина', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (10, 'Какая страна, использующая правостороннее движение на автомобильных дорогах, имеет левостороннее железнодорожное сообщение?', 'Германия', 'Китай', 'США', 'Франция', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (10, 'Какой европейский город прославился своими модными тенденциями?', 'Гамбург', 'Манчестер', 'Милан', 'Севилья', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (11, 'Что означает имя Максим?', 'Величайший', 'Знания', 'Умный', 'Великий', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (11, 'Как называется острая мексиканская приправа?', 'Лечо', 'Чили', 'Пицца', 'Сациви', 'B');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (12, 'Что коллекционирует филуменист?', 'Предметы живописи', 'Пробки', 'Фотографии', 'Спичечные коробки', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (12, 'Как иногда называют малознакомого человека?', 'Сизый голубь', 'Белая ворона', 'Тёмная лошадка', 'Чёрная кошка', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (13, 'Кто из перечисленных ниже лиц НЕ является египетским фараоном?', 'Имхотеп', 'Акхенотеп', 'Смендес', 'Сети', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (13, 'Название какой монетки происходит от слова "сто" ?', 'пфенниг', 'шиллинг', 'копейка', 'цент', 'D');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (14, 'Какая масть является самой старшей при игре в преферанс?', 'Черви', 'Бубны', 'Трефы', 'Пики', 'A');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (14, 'Какой витамин не содержится в дыне?', 'P', 'C', 'M', 'A', 'C');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (15, 'В какой стране расположена самая высокая гора Британских островов?', 'Англия', 'Шотландия', 'Судан', 'Уэльс', 'B');
INSERT INTO questions (level_number, question_text, variant_a, variant_b, variant_c, variant_d, variant_true) VALUES (15, 'Какую станцию украшают мозаичные панно художника А. Дайнеки?', 'Таганскую', 'Сокольники', 'Китай-город', 'Маяковскую', 'D');