<?xml version="1.0" encoding="windows-1251"?>
<KLogicModules>
	<Module Id="43061">
		<Name>OMIX-P99-ML-3</Name>
		<Descr>�������� ����������</Descr>
		<Group/>
		<Protocol>modbus</Protocol>
		<Properties>
			<Prop Id="1" Name="����� ������" Type="BYTE" Init="1"/>
			<Prop Id="2" Name="�����" Descr="����� �������� 0-RTU, 1-ASCII (�� ����������)" Type="BYTE" Init="0" Access="H"/>
			<Prop Id="3" Name="�����" Descr="��������� ����� � 1" Type="BYTE" Init="0" Access="H"/>
			<Prop Id="4" Name="������" Type="BYTE" Init="1" Descr="������ ��" Access="H"/>
		</Properties>
		<TagProperties>
			<Prop IdStr="Adr" Name="����� ������" Type="WORD" Access="R" Format="0x%x"/>
			<Prop IdStr="Func" Name="��� �������" Type="BYTE" Access="R" Init="3" Format="0x%x"/>
			<Prop IdStr="DataType" Name="��� ������" Type="BYTE" Access="R" Init="11"/>
			<Prop IdStr="K" Name="�����������" Type="FLOAT" Access="R" Init="1"/>
			<Prop IdStr="msk" Name="�����" Type="WORD" Access="R" Init="0xFFFF" Format="0x%x"/>
			<Prop IdStr="endian" Name="������� ���������� (0-��� ����, 1-�������� �.����, 2-�����.�.����, 3-�����.�.����,����" Type="BYTE" Access="R" Init="2"/>
		</TagProperties>
		<TagTree>
			<Group Name="���������">
				<Tag Name="�����" Type="DI" Adr="0x0001" Func="0" Descr="������� ����� � �����������"/>
				<Tag Name="�����" Type="DTI" Adr="0x0002" Func="0" Descr="����� ������ ����������"/>
				<Tag Name="����������" Type="DO" Adr="0x0003" Func="0" Descr="���������� ������ ���������� (True - �� ����������)"/>
				<Tag Name="������������" Type="DO" Adr="0x0005" Func="0" Descr="�������������� ������ ���� �������"/>
			</Group>
        <Group Name="������">
          <Tag Name="XS1" Type="AOI" K="1" Adr="0x0002" Func="16" DataType="11" Descr="����� ���� ����"/>
          <Tag Name="PT" Type="AOI" K="1" Adr="0x0003" Func="16" DataType="11" Descr="����������� ������������� �� ����������"/>
          <Tag Name="CT" Type="AOI" K="1" Adr="0x0004" Func="16" DataType="11" Descr="����������� ������������� �� ����"/>
        </Group>
        <Group Name="������">
          <Tag Name="XS1" Type="AII" K="1" Adr="0x0002" Func="3" DataType="11" Descr="����� ���� ����"/>
          <Tag Name="PT" Type="AII" K="1" Adr="0x0003" Func="3" DataType="11" Descr="����������� ������������� �� ����������"/>
          <Tag Name="CT" Type="AII" K="1" Adr="0x0004" Func="3" DataType="11" Descr="����������� ������������� �� ����"/>
          <Tag Name="DPT/DCT" Type="AII" K="1" Adr="0x0023" Func="3" DataType="11" Descr="��������� ����� ��� ����������/����"/>
          <Tag Name="DPQ/SIGN" Type="AII" K="1" Adr="0x0024" Func="3" DataType="11" Descr="��������� ����� ��� ��������/���� ��� ��������"/>
          <Tag Name="Ua" Measure="�" Type="AII" K="1" Adr="0x0025" Func="3" DataType="11" Descr="����������, ���� A"/>
          <Tag Name="Ub" Measure="�" Type="AII" K="1" Adr="0x0026" Func="3" DataType="11" Descr="����������, ���� B"/>
          <Tag Name="Uc" Measure="�" Type="AII" K="1" Adr="0x0027" Func="3" DataType="11" Descr="����������, ���� C"/>
          <Tag Name="Uab" Measure="�" Type="AII" K="1" Adr="0x0028" Func="3" DataType="11" Descr="���������� ����� ������ A � B"/>
          <Tag Name="Ubc" Measure="�" Type="AII" K="1" Adr="0x0029" Func="3" DataType="11" Descr="���������� ����� ������ B � C"/>
          <Tag Name="Uca" Measure="�" Type="AII" K="1" Adr="0x002A" Func="3" DataType="11" Descr="���������� ����� ������ C � A"/>
          <Tag Name="Ia" Measure="A" Type="AII" K="1" Adr="0x002B" Func="3" DataType="11" Descr="���, ���� A"/>
          <Tag Name="Ib" Measure="A" Type="AII" K="1" Adr="0x002C" Func="3" DataType="11" Descr="���, ���� B"/>
          <Tag Name="Ic" Measure="A" Type="AII" K="1" Adr="0x002D" Func="3" DataType="11" Descr="���, ���� C"/>
          <Tag Name="Pa" Measure="��" Type="AII" K="1" Adr="0x002E" Func="3" DataType="11" Descr="�������� ��������, ���� A"/>
          <Tag Name="Pb" Measure="��" Type="AII" K="1" Adr="0x002F" Func="3" DataType="11" Descr="�������� ��������, ���� B"/>
          <Tag Name="Pc" Measure="��" Type="AII" K="1" Adr="0x0030" Func="3" DataType="11" Descr="�������� ��������, ���� C"/>
          <Tag Name="P" Measure="��" Type="AII" K="1" Adr="0x0031" Func="3" DataType="11" Descr="��������� �������� ��������"/>
          <Tag Name="Qa" Measure="���" Type="AII" K="1" Adr="0x0032" Func="3" DataType="11" Descr="���������� ��������, ���� A"/>
          <Tag Name="Qb" Measure="���" Type="AII" K="1" Adr="0x0033" Func="3" DataType="11" Descr="���������� ��������, ���� B"/>
          <Tag Name="Qc" Measure="���" Type="AII" K="1" Adr="0x0034" Func="3" DataType="11" Descr="���������� ��������, ���� C"/>
          <Tag Name="Qs" Measure="���" Type="AII" K="1" Adr="0x0035" Func="3" DataType="11" Descr="��������� ���������� ��������"/>
          <Tag Name="COSa" Type="AII" K="1" Adr="0x0036" Func="3" DataType="11" Descr="����������� ��������, ���� A"/>
          <Tag Name="COSb" Type="AII" K="1" Adr="0x0037" Func="3" DataType="11" Descr="����������� ��������, ���� B"/>
          <Tag Name="COSc" Type="AII" K="1" Adr="0x0038" Func="3" DataType="11" Descr="����������� ��������, ���� C"/>
          <Tag Name="COS" Type="AII" K="1" Adr="0x0039" Func="3" DataType="11" Descr="��������� ����������� �������� L/C"/>
          <Tag Name="Sa" Measure="��" Type="AII" K="1" Adr="0x003A" Func="3" DataType="11" Descr="������ ��������, ���� A"/>
          <Tag Name="Sb" Measure="��" Type="AII" K="1" Adr="0x003B" Func="3" DataType="11" Descr="������ ��������, ���� B"/>
          <Tag Name="Sc" Measure="��" Type="AII" K="1" Adr="0x003C" Func="3" DataType="11" Descr="������ ��������, ���� C"/>
          <Tag Name="S" Measure="��" Type="AII" K="1" Adr="0x003D" Func="3" DataType="11" Descr="��������� ������ �������� +/-"/>
          <Tag Name="F" Measure="��" Type="AII" K="1" Adr="0x003E" Func="3" DataType="11" Descr="�������"/>
          <Tag Name="A0+ �� ������" Measure="��" Type="AII" K="1" Adr="0x0047" Func="3" DataType="11" Descr="������ �������� �������"/>
          <Tag Name="A0- �� ������" Measure="��" Type="AII" K="1" Adr="0x0049" Func="3" DataType="11" Descr="�������� �������� �������"/>
          <Tag Name="R0+ �� ������" Measure="��" Type="AII" K="1" Adr="0x004B" Func="3" DataType="11" Descr="������ ���������� �������"/>
          <Tag Name="R0- �� ������" Measure="��" Type="AII" K="1" Adr="0x004D" Func="3" DataType="11" Descr="�������� ���������� �������"/>
        </Group>
    </TagTree>
	</Module>
</KLogicModules>
