﻿Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)

	ПараметрыСеанса.РазделительЗначение = 0;
	ПараметрыСеанса.РазделительИспользование = Истина;
	ТекП = ПользователиИнформационнойБазы.ТекущийПользователь();
	ПараметрыСеанса.ТекущийПользователь = Справочники.Пользователи.НайтиПоРеквизиту("Идентификатор", ТекП.Имя);
		
КонецПроцедуры