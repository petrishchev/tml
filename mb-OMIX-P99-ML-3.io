<?xml version="1.0" encoding="windows-1251"?>
<KLogicModules>
	<Module Id="43061">
		<Name>OMIX-P99-ML-3</Name>
		<Descr>Цифровой мультиметр</Descr>
		<Group/>
		<Protocol>modbus</Protocol>
		<Properties>
			<Prop Id="1" Name="Адрес модуля" Type="BYTE" Init="1"/>
			<Prop Id="2" Name="Режим" Descr="Режим передачи 0-RTU, 1-ASCII (не реализован)" Type="BYTE" Init="0" Access="H"/>
			<Prop Id="3" Name="Карта" Descr="Адресация карты с 1" Type="BYTE" Init="0" Access="H"/>
			<Prop Id="4" Name="Версия" Type="BYTE" Init="1" Descr="Версия ПО" Access="H"/>
		</Properties>
		<TagProperties>
			<Prop IdStr="Adr" Name="Адрес модбас" Type="WORD" Access="R" Format="0x%x"/>
			<Prop IdStr="Func" Name="Код функции" Type="BYTE" Access="R" Init="3" Format="0x%x"/>
			<Prop IdStr="DataType" Name="Тип данных" Type="BYTE" Access="R" Init="11"/>
			<Prop IdStr="K" Name="Коэффициент" Type="FLOAT" Access="R" Init="1"/>
			<Prop IdStr="msk" Name="Маска" Type="WORD" Access="R" Init="0xFFFF" Format="0x%x"/>
			<Prop IdStr="endian" Name="Порядок следования (0-как есть, 1-обратный п.байт, 2-обрат.п.слов, 3-обрат.п.байт,слов" Type="BYTE" Access="R" Init="2"/>
		</TagProperties>
		<TagTree>
			<Group Name="Служебные">
				<Tag Name="Связь" Type="DI" Adr="0x0001" Func="0" Descr="Наличие связи с устройством"/>
				<Tag Name="Время" Type="DTI" Adr="0x0002" Func="0" Descr="Время опроса устройства"/>
				<Tag Name="Приостанов" Type="DO" Adr="0x0003" Func="0" Descr="Приостанов опроса устройства (True - не опрашивать)"/>
				<Tag Name="ПринудЗапись" Type="DO" Adr="0x0005" Func="0" Descr="Принудительная запись всех выходов"/>
			</Group>
        <Group Name="Запись">
          <Tag Name="XS1" Type="AOI" K="1" Adr="0x0002" Func="16" DataType="11" Descr="Выбор типа цепи"/>
          <Tag Name="PT" Type="AOI" K="1" Adr="0x0003" Func="16" DataType="11" Descr="Коэффициент трансформации по напряжению"/>
          <Tag Name="CT" Type="AOI" K="1" Adr="0x0004" Func="16" DataType="11" Descr="Коэффициент трансформации по току"/>
        </Group>
        <Group Name="Чтение">
          <Tag Name="XS1" Type="AII" K="1" Adr="0x0002" Func="3" DataType="11" Descr="Выбор типа цепи"/>
          <Tag Name="PT" Type="AII" K="1" Adr="0x0003" Func="3" DataType="11" Descr="Коэффициент трансформации по напряжению"/>
          <Tag Name="CT" Type="AII" K="1" Adr="0x0004" Func="3" DataType="11" Descr="Коэффициент трансформации по току"/>
          <Tag Name="DPT/DCT" Type="AII" K="1" Adr="0x0023" Func="3" DataType="11" Descr="Положение точки для напряжения/тока"/>
          <Tag Name="DPQ/SIGN" Type="AII" K="1" Adr="0x0024" Func="3" DataType="11" Descr="Положение точки для мощности/знак для мощности"/>
          <Tag Name="Ua" Measure="В" Type="AII" K="1" Adr="0x0025" Func="3" DataType="11" Descr="Напряжение, фаза A"/>
          <Tag Name="Ub" Measure="В" Type="AII" K="1" Adr="0x0026" Func="3" DataType="11" Descr="Напряжение, фаза B"/>
          <Tag Name="Uc" Measure="В" Type="AII" K="1" Adr="0x0027" Func="3" DataType="11" Descr="Напряжение, фаза C"/>
          <Tag Name="Uab" Measure="В" Type="AII" K="1" Adr="0x0028" Func="3" DataType="11" Descr="Напряжение между фазами A и B"/>
          <Tag Name="Ubc" Measure="В" Type="AII" K="1" Adr="0x0029" Func="3" DataType="11" Descr="Напряжение между фазами B и C"/>
          <Tag Name="Uca" Measure="В" Type="AII" K="1" Adr="0x002A" Func="3" DataType="11" Descr="Напряжение между фазами C и A"/>
          <Tag Name="Ia" Measure="A" Type="AII" K="1" Adr="0x002B" Func="3" DataType="11" Descr="Ток, фаза A"/>
          <Tag Name="Ib" Measure="A" Type="AII" K="1" Adr="0x002C" Func="3" DataType="11" Descr="Ток, фаза B"/>
          <Tag Name="Ic" Measure="A" Type="AII" K="1" Adr="0x002D" Func="3" DataType="11" Descr="Ток, фаза C"/>
          <Tag Name="Pa" Measure="Вт" Type="AII" K="1" Adr="0x002E" Func="3" DataType="11" Descr="Активная мощность, фаза A"/>
          <Tag Name="Pb" Measure="Вт" Type="AII" K="1" Adr="0x002F" Func="3" DataType="11" Descr="Активная мощность, фаза B"/>
          <Tag Name="Pc" Measure="Вт" Type="AII" K="1" Adr="0x0030" Func="3" DataType="11" Descr="Активная мощность, фаза C"/>
          <Tag Name="P" Measure="Вт" Type="AII" K="1" Adr="0x0031" Func="3" DataType="11" Descr="Суммарная активная мощность"/>
          <Tag Name="Qa" Measure="ВАр" Type="AII" K="1" Adr="0x0032" Func="3" DataType="11" Descr="Реактивная мощность, фаза A"/>
          <Tag Name="Qb" Measure="ВАр" Type="AII" K="1" Adr="0x0033" Func="3" DataType="11" Descr="Реактивная мощность, фаза B"/>
          <Tag Name="Qc" Measure="ВАр" Type="AII" K="1" Adr="0x0034" Func="3" DataType="11" Descr="Реактивная мощность, фаза C"/>
          <Tag Name="Qs" Measure="ВАр" Type="AII" K="1" Adr="0x0035" Func="3" DataType="11" Descr="Суммарная реактивная мощность"/>
          <Tag Name="COSa" Type="AII" K="1" Adr="0x0036" Func="3" DataType="11" Descr="Коэффициент мощности, фаза A"/>
          <Tag Name="COSb" Type="AII" K="1" Adr="0x0037" Func="3" DataType="11" Descr="Коэффициент мощности, фаза B"/>
          <Tag Name="COSc" Type="AII" K="1" Adr="0x0038" Func="3" DataType="11" Descr="Коэффициент мощности, фаза C"/>
          <Tag Name="COS" Type="AII" K="1" Adr="0x0039" Func="3" DataType="11" Descr="Суммарный коэффициент мощности L/C"/>
          <Tag Name="Sa" Measure="ВА" Type="AII" K="1" Adr="0x003A" Func="3" DataType="11" Descr="Полная мощность, фаза A"/>
          <Tag Name="Sb" Measure="ВА" Type="AII" K="1" Adr="0x003B" Func="3" DataType="11" Descr="Полная мощность, фаза B"/>
          <Tag Name="Sc" Measure="ВА" Type="AII" K="1" Adr="0x003C" Func="3" DataType="11" Descr="Полная мощность, фаза C"/>
          <Tag Name="S" Measure="ВА" Type="AII" K="1" Adr="0x003D" Func="3" DataType="11" Descr="Суммарная полная мощность +/-"/>
          <Tag Name="F" Measure="Гц" Type="AII" K="1" Adr="0x003E" Func="3" DataType="11" Descr="Частота"/>
          <Tag Name="A0+ со сброса" Measure="Вт" Type="AII" K="1" Adr="0x0047" Func="3" DataType="11" Descr="Прямая активная энергия"/>
          <Tag Name="A0- со сброса" Measure="Вт" Type="AII" K="1" Adr="0x0049" Func="3" DataType="11" Descr="Обратная активная энергия"/>
          <Tag Name="R0+ со сброса" Measure="Вт" Type="AII" K="1" Adr="0x004B" Func="3" DataType="11" Descr="Прямая реактивная энергия"/>
          <Tag Name="R0- со сброса" Measure="Вт" Type="AII" K="1" Adr="0x004D" Func="3" DataType="11" Descr="Обратная реактивная энергия"/>
        </Group>
    </TagTree>
	</Module>
</KLogicModules>
