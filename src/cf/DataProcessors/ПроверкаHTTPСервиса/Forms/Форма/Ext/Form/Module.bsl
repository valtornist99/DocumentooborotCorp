﻿
&НаКлиенте
Процедура Старт(Команда)
	Соединение = Новый HTTPСоединение("localhost", 80, "1", "");
	Запрос = Новый HTTPЗапрос("/1C/hs/root_service_1/example");
	
	Результат = Соединение.Получить(Запрос);
	Сообщить("Сервис доступен: " + Результат.ПолучитьТелоКакСтроку());
КонецПроцедуры
