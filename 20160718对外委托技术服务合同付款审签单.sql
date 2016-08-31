IF  EXISTS( select * from sysobjects where xtype='U' and name = 'TechnicalContractPay')
drop table TechnicalContractPay
GO
CREATE TABLE [dbo].TechnicalContractPay(
	TaskID uniqueidentifier PRIMARY KEY,--生产通知ID

    
	SubContractNo VARCHAR(50) ,--分包合同编号
      SubContractName VARCHAR(50) ,--分包合同名称
      ProjNo VARCHAR(50) ,--项目编号
    ProjName VARCHAR(50) ,--项目名称
	SubType  VARCHAR(50) ,--分包类型
	ContractAmount DECIMAL(18, 2) ,--分包合同总金额
      ProjAmount DECIMAL(18, 2) ,--项目经费
      ProjMoneyReg DECIMAL(18, 2) ,--项目到款
      FirstPay DECIMAL(18, 2) ,--第一次已付款额
	  SecondPay DECIMAL(18, 2) ,--第二次已付款额
	  ThridPay DECIMAL(18, 2) ,--第三次已付款额
	  Times INT,--已付款次数
	  PaymentTotalAmount DECIMAL(18, 2) ,--已付款合计

      PaymentAmount DECIMAL(18, 2) ,--本次付款金额
      PaymentAmountUpper NVARCHAR(50) ,--本次付款金额大写
      Payee VARCHAR(50) ,--收款单位
      ContactPerson NVARCHAR(20) ,--联系人
      ContactWay NVARCHAR(50) ,--联系方式
      ApplicationDate DATETIME ,--申请日期
      ShowProgressExplain TEXT ,--形象进度说明
      Bank VARCHAR(50) ,--开户银行
      BankAccount VARCHAR(50) ,--开户账号

	STATUS VARCHAR(10),--单据状态
	Remark TEXT,--备注
	Operator nvarchar(20),--添加人
	OperationTime datetime,--添加时间
	Modifier nvarchar(20),--修改人
	ModifierTime datetime--修改时间
)
GO