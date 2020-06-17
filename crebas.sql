/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2020/6/15 15:03:44                           */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('BooAucalnfo')
            and   type = 'U')
   drop table BooAucalnfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BooInfo')
            and   type = 'U')
   drop table BooInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ConTastInfo')
            and   type = 'U')
   drop table ConTastInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MarketInfo')
            and   type = 'U')
   drop table MarketInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MemberInfoo')
            and   type = 'U')
   drop table MemberInfoo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OrderInfo')
            and   type = 'U')
   drop table OrderInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rbac_Admin')
            and   type = 'U')
   drop table Rbac_Admin
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rbac_DeptPart')
            and   type = 'U')
   drop table Rbac_DeptPart
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rbac_Power')
            and   type = 'U')
   drop table Rbac_Power
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rbac_PowerAndRole')
            and   type = 'U')
   drop table Rbac_PowerAndRole
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rbac_RoleInfo')
            and   type = 'U')
   drop table Rbac_RoleInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RecordInfo')
            and   type = 'U')
   drop table RecordInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UserInfo')
            and   type = 'U')
   drop table UserInfo
go

/*==============================================================*/
/* Table: BooAucalnfo                                           */
/*==============================================================*/
create table BooAucalnfo (
   Id                   uniqueidentifier     not null,
   BooId                uniqueidentifier     null,
   CreateTime           datetime             null,
   EndTime              datetime             null,
   CashMoney            money                null,
   StartMoney           money                null,
   MarkUpMoney          money                null,
   ResMoney             money                null,
   DefTime              datetime             null,
   WinnerUser           varchar(50)          null,
   FinishPrice          money                null,
   OrderState           varchar(3)           null,
   CashMoneyState       varchar(2)           null,
   BooAucaState         varchar(2)           null,
   constraint PK_BOOAUCALNFO primary key (Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '摊位竞拍Id',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BooId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'BooId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '摊位Id',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'BooId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '开始时间',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'EndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '结束时间',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'EndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CashMoney')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'CashMoney'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '保证金',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'CashMoney'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartMoney')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'StartMoney'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '起拍价',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'StartMoney'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MarkUpMoney')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'MarkUpMoney'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '加价幅度',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'MarkUpMoney'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ResMoney')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'ResMoney'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '保留价',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'ResMoney'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DefTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'DefTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '延迟周期',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'DefTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WinnerUser')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'WinnerUser'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '中标用户',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'WinnerUser'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FinishPrice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'FinishPrice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '成交价格',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'FinishPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OrderState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'OrderState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '订单',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'OrderState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CashMoneyState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'CashMoneyState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '保证金',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'CashMoneyState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BooAucalnfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BooAucaState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'BooAucaState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '状态',
   'user', @CurrentUser, 'table', 'BooAucalnfo', 'column', 'BooAucaState'
go

/*==============================================================*/
/* Table: BooInfo                                               */
/*==============================================================*/
create table BooInfo (
   Id                   uniqueidentifier     not null,
   Boo_Title            varchar(50)          null,
   Boo_No               varchar(4)           null,
   Mark_Id              uniqueidentifier     null,
   Boo_Area             int                  null,
   Boo_Len              int                  null,
   Boo_Wid              int                  null,
   Boo_Label            varbinary(50)        null,
   Boo_Rent             money                null,
   Boo_Dead             int                  null,
   "Less_Id(租户Id)"      uniqueidentifier     null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   IsEnable             varchar(3)           null,
   constraint PK_BOOINFO primary key (Id)
)
go

/*==============================================================*/
/* Table: ConTastInfo                                           */
/*==============================================================*/
create table ConTastInfo (
   Id                   uniqueidentifier     not null,
   ConNo                varchar(50)          null,
   OId                  uniqueidentifier     null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   constraint PK_CONTASTINFO primary key (Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ConTastInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '合同Id',
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ConTastInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ConNo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'ConNo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '合同编号',
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'ConNo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ConTastInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'OId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '订单列表Id',
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'OId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ConTastInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '上传时间',
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ConTastInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '修改时间',
   'user', @CurrentUser, 'table', 'ConTastInfo', 'column', 'UpdateTime'
go

/*==============================================================*/
/* Table: MarketInfo                                            */
/*==============================================================*/
create table MarketInfo (
   Id                   uniqueidentifier     not null,
   Mark_Name            varchar(50)          null,
   Mark_Phone           varchar(11)          null,
   Mark_AccName         varchar(50)          null,
   Mark_Address         varchar(Max)         null,
   Mark_SortId          int                  null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   IsEnable             varchar(2)           null,
   constraint PK_MARKETINFO primary key (Id)
)
go

/*==============================================================*/
/* Table: MemberInfoo                                           */
/*==============================================================*/
create table MemberInfoo (
   Id                   uniqueidentifier     not null,
   Mem_Name             varchar(50)          null,
   Mem_WX               varchar(50)          null,
   Mem_Address          varchar(100)         null,
   Mem_State            varchar(2)           null,
   IsAllow              varchar(2)           null,
   constraint PK_MEMBERINFOO primary key (Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MemberInfoo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Id')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Id'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '会员Id',
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Id'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MemberInfoo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mem_Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '会员名称',
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MemberInfoo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mem_WX')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_WX'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '微信账号',
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_WX'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MemberInfoo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mem_Address')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_Address'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '会员地址',
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MemberInfoo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Mem_State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '状态',
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'Mem_State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('MemberInfoo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsAllow')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'IsAllow'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否允许访问',
   'user', @CurrentUser, 'table', 'MemberInfoo', 'column', 'IsAllow'
go

/*==============================================================*/
/* Table: OrderInfo                                             */
/*==============================================================*/
create table OrderInfo (
   Id                   uniqueidentifier     not null,
   OrderNo              varchar(50)          null,
   BooAucaId            uniqueidentifier     null,
   UserId               uniqueidentifier     null,
   RenPrice             money                null,
   CashMoney            money                null,
   Teancy               varchar(50)          null,
   CreateTime           datetime             null,
   EndTime              datetime             null,
   PayState             varchar(2)           null,
   constraint PK_ORDERINFO primary key (Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OrderNo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'OrderNo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '订单号',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'OrderNo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BooAucaId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'BooAucaId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '摊位竞拍Id',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'BooAucaId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'UserId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '租户Id',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'UserId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RenPrice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'RenPrice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '租赁金额',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'RenPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CashMoney')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'CashMoney'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '保证金',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'CashMoney'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Teancy')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'Teancy'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '租期',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'Teancy'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建时间',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'EndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '结束时间',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'EndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('OrderInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PayState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'PayState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '付款状态',
   'user', @CurrentUser, 'table', 'OrderInfo', 'column', 'PayState'
go

/*==============================================================*/
/* Table: Rbac_Admin                                            */
/*==============================================================*/
create table Rbac_Admin (
   Id                   uniqueidentifier     not null,
   Acc_Name             varchar(50)          null,
   Acc_Num              varchar(50)          null,
   Acc_Pass             varchar(50)          null,
   Acc_Phone            varchar(11)          null,
   Acc_Img              varchar(200)         null,
   DeptId               uniqueidentifier     null,
   RoleId               uniqueidentifier     null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   IsEnable             varchar(2)           null,
   constraint PK_RBAC_ADMIN primary key (Id)
)
go

/*==============================================================*/
/* Table: Rbac_DeptPart                                         */
/*==============================================================*/
create table Rbac_DeptPart (
   Id                   uniqueidentifier     not null,
   Dept_Name            varchar(50)          null,
   Dept_Desc            varchar(50)          null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   IsEnable             varchar(2)           null,
   constraint PK_RBAC_DEPTPART primary key (Id)
)
go

/*==============================================================*/
/* Table: Rbac_Power                                            */
/*==============================================================*/
create table Rbac_Power (
   Id                   uniqueidentifier     not null,
   Power_Name           varchar(50)          null,
   constraint PK_RBAC_POWER primary key (Id)
)
go

/*==============================================================*/
/* Table: Rbac_PowerAndRole                                     */
/*==============================================================*/
create table Rbac_PowerAndRole (
   Id                   uniqueidentifier     not null,
   PowerId              varchar(50)          null,
   RoleId               varchar(50)          null,
   constraint PK_RBAC_POWERANDROLE primary key (Id)
)
go

/*==============================================================*/
/* Table: Rbac_RoleInfo                                         */
/*==============================================================*/
create table Rbac_RoleInfo (
   Id                   uniqueidentifier     not null,
   Role_Name            varchar(50)          null,
   Role_Desc            varchar(50)          null,
   CreateTime           datetime             null,
   UpdateTime           datetime             null,
   IsEnable             varchar(2)           null,
   constraint PK_RBAC_ROLEINFO primary key (Id)
)
go

/*==============================================================*/
/* Table: RecordInfo                                            */
/*==============================================================*/
create table RecordInfo (
   Id                   uniqueidentifier     not null,
   AccId                uniqueidentifier     null,
   Ip_Address           varchar(20)          null,
   UpdateTime           datetime             null,
   Record               varchar(50)          null,
   constraint PK_RECORDINFO primary key (Id)
)
go

/*==============================================================*/
/* Table: UserInfo                                              */
/*==============================================================*/
create table UserInfo (
   Id                   uniqueidentifier     not null,
   User_Name            varchar(50)          null,
   User_Pass            varchar(50)          null,
   User_Phone           varchar(11)          null,
   MemerId              uniqueidentifier     null,
   User_Address         varchar(100)         null,
   User_State           varchar(2)           null,
   User_Img             varchar(50)          null,
   constraint PK_USERINFO primary key (Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'User_Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '租户名称',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'User_Pass')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Pass'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '租户密码',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Pass'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'User_Phone')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Phone'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '联系方式',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Phone'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MemerId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'MemerId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '关联会员',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'MemerId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'User_Address')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Address'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '联系地址',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Address'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'User_State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '状态',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UserInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'User_Img')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Img'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '头像',
   'user', @CurrentUser, 'table', 'UserInfo', 'column', 'User_Img'
go

