IF  EXISTS( select * from sysobjects where xtype='U' and name = 'TechnicalContractPay')
drop table TechnicalContractPay
GO
CREATE TABLE [dbo].TechnicalContractPay(
	TaskID uniqueidentifier PRIMARY KEY,--����֪ͨID

    
	SubContractNo VARCHAR(50) ,--�ְ���ͬ���
      SubContractName VARCHAR(50) ,--�ְ���ͬ����
      ProjNo VARCHAR(50) ,--��Ŀ���
    ProjName VARCHAR(50) ,--��Ŀ����
	SubType  VARCHAR(50) ,--�ְ�����
	ContractAmount DECIMAL(18, 2) ,--�ְ���ͬ�ܽ��
      ProjAmount DECIMAL(18, 2) ,--��Ŀ����
      ProjMoneyReg DECIMAL(18, 2) ,--��Ŀ����
      FirstPay DECIMAL(18, 2) ,--��һ���Ѹ����
	  SecondPay DECIMAL(18, 2) ,--�ڶ����Ѹ����
	  ThridPay DECIMAL(18, 2) ,--�������Ѹ����
	  Times INT,--�Ѹ������
	  PaymentTotalAmount DECIMAL(18, 2) ,--�Ѹ���ϼ�

      PaymentAmount DECIMAL(18, 2) ,--���θ�����
      PaymentAmountUpper NVARCHAR(50) ,--���θ������д
      Payee VARCHAR(50) ,--�տλ
      ContactPerson NVARCHAR(20) ,--��ϵ��
      ContactWay NVARCHAR(50) ,--��ϵ��ʽ
      ApplicationDate DATETIME ,--��������
      ShowProgressExplain TEXT ,--�������˵��
      Bank VARCHAR(50) ,--��������
      BankAccount VARCHAR(50) ,--�����˺�

	STATUS VARCHAR(10),--����״̬
	Remark TEXT,--��ע
	Operator nvarchar(20),--�����
	OperationTime datetime,--���ʱ��
	Modifier nvarchar(20),--�޸���
	ModifierTime datetime--�޸�ʱ��
)
GO