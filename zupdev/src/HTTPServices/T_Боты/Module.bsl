
Функция PingGETPing(Запрос)
	
	Возврат Т_ОбщегоНазначенияHTTP.ПростойУспешныйОтвет();
	
КонецФункции

Функция SendPost(Запрос)
	
	УстановитьПривилегированныйРежим(Истина);
	
	
	Попытка
		 
		//Ответ = Т_ОбщегоНазначенияHTTP.ПростойУспешныйОтвет();
		Ответ = Т_Телеграм.ОбработатьВходящийЗапрос(Запрос);
		
	Исключение
		ИнформацияОбОшибке = ИнформацияОбОшибке();
		Ответ = Т_ОбщегоНазначенияHTTP.ОтветОбОшибке(ИнформацияОбОшибке);
	КонецПопытки;
	
	Т_ОбщегоНазначенияHTTP.ЗаписьЛога("send", Запрос, Ответ);
	
	Возврат Ответ;
КонецФункции


