
CREATE TABLE Tb_TiposDeDados(
	DataHora date -- 01-01-0001 até 31-12-9999
	DataHora datetime -- 01-01-1753 até 31-12-9999 | horas de 00:00 até 23:59:59.997
	DataHora datetime2 -- 01-01-0001 até 31-12-9999 | hora de 00:00 até 23:59:59.9999999
	DataHota datetimeoffset -- Dados de um fuso horário de um pais especifico
	DataHota smalldatetime -- 01-01-1900 até 06-06-2079 | hora de 00:00 até 23:59:59
	DataHora time -- hora de 00:00 até 23:59:59.9999999
);