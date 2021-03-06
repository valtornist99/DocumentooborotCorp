﻿
&НаСервере
Функция Изменения()
	Запрос = Новый Запрос("ВЫБРАТЬ
	         |	РИБ.Ссылка КАК Узел,
	         |	Подразделения.Ссылка КАК Подразделение
	         |ИЗ
	         |	ПланОбмена.РИБ КАК РИБ
	         |		ВНУТРЕННЕЕ СОЕДИНЕНИЕ Справочник.Подразделения КАК Подразделения
	         |		ПО РИБ.Подразделение = Подразделения.Ссылка");
			 
	Возврат Запрос.Выполнить().Выгрузить();
КонецФункции

&НаСервере
Процедура ЗарегистрироватьВсеНаСервере()
	Выборка = Изменения();
	для каждого Стр из Выборка Цикл
		ПланыОбмена.ЗарегистрироватьИзменения(Стр.Узел, Стр.Подразделение);
	конецЦикла;
КонецПроцедуры

&НаКлиенте
Процедура ЗарегистрироватьВсе(Команда)
	ЗарегистрироватьВсеНаСервере();
КонецПроцедуры

&НаСервере
Процедура ОтменитьВсеНаСервере()
	Выборка = Изменения();
	для каждого Стр из Выборка Цикл
		ПланыОбмена.УдалитьРегистрациюИзменений(Стр.Узел, Стр.Подразделение);
	конецЦикла;
КонецПроцедуры

&НаКлиенте
Процедура ОтменитьВсе(Команда)
	ОтменитьВсеНаСервере();
КонецПроцедуры
