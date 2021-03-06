﻿INSERT INTO EnumType VALUES (2, 'ReportItemSource');
INSERT INTO EnumType VALUES (3, 'DurationUnit');
INSERT INTO EnumType VALUES (4, 'FeeType');
INSERT INTO EnumType VALUES (5, 'JournalType');
INSERT INTO EnumType VALUES (6, 'VehicleType');

INSERT INTO EnumValue VALUES (2, 'VehicleSalesJournal', 0);
INSERT INTO EnumValue VALUES (2, 'SalesServiceJournal', 1);
INSERT INTO EnumValue VALUES (2, 'GeneralJournal', 2);
INSERT INTO EnumValue VALUES (2, 'TaxJournal', 3);
INSERT INTO EnumValue VALUES (2, 'HumanResourceAllocation', 4);
INSERT INTO EnumValue VALUES (2, 'AccountReceivableDuration', 5);
INSERT INTO EnumValue VALUES (2, 'InventoryDuration', 6);
INSERT INTO EnumValue VALUES (3, 'Days', 0);
INSERT INTO EnumValue VALUES (3, 'Months', 1);
INSERT INTO EnumValue VALUES (4, '标准工时收费', 0);
INSERT INTO EnumValue VALUES (4, '有效工时比率', 1);
INSERT INTO EnumValue VALUES (4, '技工平均工资', 2);
INSERT INTO EnumValue VALUES (5, 'Revenue', 0);
INSERT INTO EnumValue VALUES (5, 'Expense', 1);
INSERT INTO EnumValue VALUES (5, 'Other', 2);
INSERT INTO EnumValue VALUES (6, '微型车', 0);
INSERT INTO EnumValue VALUES (6, '小型车', 1);
INSERT INTO EnumValue VALUES (6, '紧凑型 (A)', 2);
INSERT INTO EnumValue VALUES (6, '紧凑型 (B)', 3);
INSERT INTO EnumValue VALUES (6, '紧凑型 (C)', 4);
INSERT INTO EnumValue VALUES (6, '中型车 (A)', 5);
INSERT INTO EnumValue VALUES (6, '中型车 (B)', 6);
INSERT INTO EnumValue VALUES (6, '中型车 (C)', 7);
INSERT INTO EnumValue VALUES (6, '大中型 (A)', 8);
INSERT INTO EnumValue VALUES (6, '大中型 (B)', 9);
INSERT INTO EnumValue VALUES (6, '大中型 (C)', 10);
INSERT INTO EnumValue VALUES (6, '豪华车-紧凑型 (A)', 11);
INSERT INTO EnumValue VALUES (6, '豪华车-紧凑型 (B)', 12);
INSERT INTO EnumValue VALUES (6, '豪华车-中型 (A)', 13);
INSERT INTO EnumValue VALUES (6, '豪华车-中型 (B)', 14);
INSERT INTO EnumValue VALUES (6, '豪华车-中型 (C)', 15);
INSERT INTO EnumValue VALUES (6, '豪华车-大型 (A)', 16);
INSERT INTO EnumValue VALUES (6, '豪华车-大型 (B)', 17);
INSERT INTO EnumValue VALUES (6, '豪华车-大型 (C)', 18);
INSERT INTO EnumValue VALUES (6, '跑车', 19);
INSERT INTO EnumValue VALUES (6, '新能源车', 20);
INSERT INTO EnumValue VALUES (6, '跨界车', 21);
INSERT INTO EnumValue VALUES (6, 'SUV - (A) 紧凑型', 22);
INSERT INTO EnumValue VALUES (6, 'SUV - (B) 紧凑型', 23);
INSERT INTO EnumValue VALUES (6, 'SUV - (C) 紧凑型', 24);
INSERT INTO EnumValue VALUES (6, 'SUV - (A) 中型', 25);
INSERT INTO EnumValue VALUES (6, 'SUV - (B) 中型', 26);
INSERT INTO EnumValue VALUES (6, 'SUV - (C) 中型', 27);
INSERT INTO EnumValue VALUES (6, 'SUV - (A) 大型 (A)', 28);
INSERT INTO EnumValue VALUES (6, 'SUV - (B) 大型 (B)', 29);
INSERT INTO EnumValue VALUES (6, 'SUV - (C) 大型 (C)', 30);
INSERT INTO EnumValue VALUES (6, 'SUV - (A) 豪华中型', 31);
INSERT INTO EnumValue VALUES (6, 'SUV - (B) 豪华中型', 32);
INSERT INTO EnumValue VALUES (6, 'SUV - (C) 豪华中型', 33);
INSERT INTO EnumValue VALUES (6, 'SUV - (A) 豪华大型', 34);
INSERT INTO EnumValue VALUES (6, 'SUV - (B)', 35);
INSERT INTO EnumValue VALUES (6, 'SUV - (C)', 36);
INSERT INTO EnumValue VALUES (6, 'MPV (A)', 37);
INSERT INTO EnumValue VALUES (6, 'MPV (B)', 38);
INSERT INTO EnumValue VALUES (6, 'MPV (C)', 39);

INSERT INTO UserRole SELECT 0, 'Super', current_timestamp;
INSERT INTO UserRole SELECT 1, 'Admin', current_timestamp;
INSERT INTO UserRole SELECT 2, 'Dealer', current_timestamp;
INSERT INTO UserRole SELECT 3, 'HeadQuater', current_timestamp;

INSERT INTO Dealer SELECT 1, '重庆长锦', '重庆长锦销售服务有限公司', 'CN-01', '重庆', current_timestamp;
INSERT INTO Dealer SELECT 2, '长沙长耀', '长沙长耀销售服务有限公司', 'CN-02', '长沙', current_timestamp;
INSERT INTO Dealer SELECT 3, '广本一店', '广本一店销售服务有限公司', 'CN-03', '广州', current_timestamp;
INSERT INTO Dealer SELECT 4, '长盛公司', '长盛公司销售服务有限公司', 'CN-05', '广州', current_timestamp;
INSERT INTO Dealer SELECT 5, '北京长怡', '北京长怡销售服务有限公司', 'CN-06', '北京', current_timestamp;
INSERT INTO Dealer SELECT 6, '南京长昊', '南京长昊销售服务有限公司', 'CN-07', '南京', current_timestamp;
INSERT INTO Dealer SELECT 7, '重庆长捷', '重庆长捷汽车销售服务有限公司', 'CN-08', '重庆', current_timestamp;
INSERT INTO Dealer SELECT 8, '长力公司', '长力公司销售服务有限公司', 'CN-09', '广州', current_timestamp;
INSERT INTO Dealer SELECT 9, '重庆长达', '重庆长达销售服务有限公司', 'CN-10', '重庆', current_timestamp;
INSERT INTO Dealer SELECT 10, '广丰一店', '广丰一店销售服务有限公司', 'CN-11', '广州', current_timestamp;
INSERT INTO Dealer SELECT 11, '长宁公司', '广州长宁公司销售服务有限公司', 'CN-12', '广州', current_timestamp;
INSERT INTO Dealer SELECT 12, '长凯公司', '长凯销售服务有限公司', 'CN-13', '广州', current_timestamp;
INSERT INTO Dealer SELECT 13, '北京长京行', '北京长京行销售服务有限公司', 'CN-14', '北京', current_timestamp;
INSERT INTO Dealer SELECT 14, '南京长益', '南京长益销售服务有限公司', 'CN-15', '广州', current_timestamp;
INSERT INTO Dealer SELECT 15, '重庆长俊', '重庆长俊销售服务有限公司', 'CN-16', '重庆', current_timestamp;
INSERT INTO Dealer SELECT 16, '长沙长威', '长沙长威销售服务有限公司', 'CN-17', '长沙', current_timestamp;
INSERT INTO Dealer SELECT 17, '长悦公司', '长悦公司销售服务有限公司', 'CN-18', '广州', current_timestamp;
INSERT INTO Dealer SELECT 18, '湖南长坤', '湖南长坤销售服务有限公司', 'CN-19', '长沙', current_timestamp;
INSERT INTO Dealer SELECT 19, '长佳公司', '长佳公司销售服务有限公司', 'CN-20', '广州', current_timestamp;
INSERT INTO Dealer SELECT 20, '重庆长冠', '重庆长冠销售服务有限公司', 'CN-21', '重庆', current_timestamp;

INSERT INTO UserInfo SELECT 'superadmin', 'GGz3dMl7YKHBBu9xjRCXCmoG4GvviVU9muZdk4qIbq4=', 0, null, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'admin', 'SCgxDIJCG248l/33bxMv4KSfCr/YMyId1+aA1IGtv9Y=', 1, null, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changjin', 'n6CquLgvsJjmslyrMMJ/EuoeYq7GapTkdloc+TOxw1s=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changyao', 'eKlYt6bOE5ZBFvThjICSNkSX1Pw5v0qNVYe9LnbxPs4=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'guangben', 'R7Z+52irSlMTt9IUyiqgiXOq7vtvrQpnAXfYoQczdZU=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changsheng', 'j7wMAHzrcz38LFtBveS8yf/R6DSb4UjBU8MpDavmz3M=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changyi', 'aFOX4zD+sddnQNggoVmIbUQmmp+2UJko5PaKUnet/80=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changhao', 'iR+IxOJvJqDunHM3g3++ck6lckZEQY1W+rTsYSHl9II=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changjie', 'SR6sw3fNoAB+kIcCK3hk1hPQ2cqTwem6obyhejnFM9A=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changli', '9ZxOeqTtCzzLDNtSKPTyTcpn90eG8hiD3yJyftCKzZA=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changda', 'OppK5ytWBdOErRR3+ipomW6Z85rSH8GgCDBlfTevR1k=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'guangfeng', '+LcTilpinvsERvRYtxdzMjuPLh/p2soRXubVD3REbX0=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changning', 'HjKdle7RVUwmO6gKJ7p+yetENq6jyJRRPa6HbRMVkLY=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changkai', 'k61GgrDxhb+pqifYsGUCkEq0iez/Q4BkMkL5LHbggQs=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changjing', '43pVjB9MgXs0Uc6xcR+u+fKNPZawKxcGCLhmmcweB4o=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changyi', 'aFOX4zD+sddnQNggoVmIbUQmmp+2UJko5PaKUnet/80=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changjun', 'er6oVLQ8BA9o/r6PE8V1JfZ6QDNZ01OMSCpyoHd3jaM=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changwei', 'JlSGTcIovTnWOSXzQie2I+Y8nQz2mVHpqWlT5fltUt0=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changyue', 'FoS+KlCqxnMcI8sYHXdVf+2aWnFFStBwmd5+ygBR3gM=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changkun', 'BejWDFjgG71DOai8IKqd7uLTshqDhooWkNWNCaxi6DU=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changjia', 'ku/hnfclLTPeZK2y2dbqBwf0iUgixzNGVISQkEMjgDM=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'changguan', 'SASPoLl7RWFxPZzxWzMthAPEhfBbAhB4wfptYrn7plU=', 2, 11, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';
INSERT INTO UserInfo SELECT 'headquarter', 'uaKtisih50nJyRVwud/cBOFhqNLRiiEgojCjv01Ez44=', 3, null, true, 0, current_timestamp, '9999-01-01 08:00:00', 'admin';

INSERT INTO Department SELECT 0, 'NA', current_timestamp;
INSERT INTO Department SELECT 1, '新车销售部', current_timestamp;
INSERT INTO Department SELECT 2, '二手车部', current_timestamp;
INSERT INTO Department SELECT 3, '租赁事业部', current_timestamp;
INSERT INTO Department SELECT 4, '维修部', current_timestamp;
INSERT INTO Department SELECT 5, '备件部', current_timestamp;
INSERT INTO Department SELECT 6, '钣喷部', current_timestamp;
INSERT INTO Department SELECT 7, '其它部', current_timestamp;

INSERT INTO Menu SELECT 1, 'DealerSystem', '经销商财务系统';
INSERT INTO Menu SELECT 2, 'DealerDataEntry', '数据输入';
INSERT INTO Menu SELECT 3, 'OperationIncomeAndMargin', '收入与毛利润';
INSERT INTO Menu SELECT 4, 'NonSalesProfit', '非销售类返利';
INSERT INTO Menu SELECT 5, 'OperationExpense', '经营费用';
INSERT INTO Menu SELECT 6, 'EmployeeDividend', '员工分红';
INSERT INTO Menu SELECT 7, 'NonRecurrentPNL', '非经营性损益';
INSERT INTO Menu SELECT 8, 'AccountReceivables', '应收帐款';
INSERT INTO Menu SELECT 9, 'Inventory', '库存';
INSERT INTO Menu SELECT 10, 'HumanResource', '人员管理';
INSERT INTO Menu SELECT 11, 'Tax', '所得税';
INSERT INTO Menu SELECT 12, 'OperationIncomeAndMargin_NewVehicle', '新车销售部';
INSERT INTO Menu SELECT 13, 'OperationIncomeAndMargin_UsedVehicle', '二手车部';
INSERT INTO Menu SELECT 14, 'OperationIncomeAndMargin_Rent', '租恁事业部';
INSERT INTO Menu SELECT 15, 'OperationIncomeAndMargin_Repair', '维修部';
INSERT INTO Menu SELECT 16, 'OperationIncomeAndMargin_Parts', '配件部';
INSERT INTO Menu SELECT 17, 'OperationIncomeAndMargin_SheetMetalSpray', '钣喷部';
INSERT INTO Menu SELECT 18, 'OperationExpense_NewVehicle', '新车销售部';
INSERT INTO Menu SELECT 19, 'OperationExpense_UsedVehicle', '二手车部';
INSERT INTO Menu SELECT 20, 'OperationExpense_Rent', '租恁事业部';
INSERT INTO Menu SELECT 21, 'OperationExpense_Repair', '维修部';
INSERT INTO Menu SELECT 22, 'OperationExpense_Parts', '配件部';
INSERT INTO Menu SELECT 23, 'OperationExpense_SheetMetalSpray', '钣喷部';
INSERT INTO Menu SELECT 24, 'OperationExpense_OtherDepartment', '其它部门';
INSERT INTO Menu SELECT 25, 'Inventory_NewVehicle', '新车';
INSERT INTO Menu SELECT 26, 'Inventory_UsedVehicle', '二手车';
INSERT INTO Menu SELECT 27, 'Inventory_Parts', '备件与精品';
INSERT INTO Menu SELECT 28, 'HumanResource_WorkingHours', '工时';
INSERT INTO Menu SELECT 29, 'HumanResource_PositionAllocation', '经销商人员';

INSERT INTO MenuHierachy SELECT 1, 2, 1;
INSERT INTO MenuHierachy SELECT 2, 3, 1;
INSERT INTO MenuHierachy SELECT 2, 4, 2;
INSERT INTO MenuHierachy SELECT 2, 5, 3;
INSERT INTO MenuHierachy SELECT 2, 6, 4;
INSERT INTO MenuHierachy SELECT 2, 7, 5;
INSERT INTO MenuHierachy SELECT 2, 8, 6;
INSERT INTO MenuHierachy SELECT 2, 9, 7;
INSERT INTO MenuHierachy SELECT 2, 10, 8;
INSERT INTO MenuHierachy SELECT 2, 11, 9;
INSERT INTO MenuHierachy SELECT 3, 12, 1;
INSERT INTO MenuHierachy SELECT 3, 13, 2;
INSERT INTO MenuHierachy SELECT 3, 14, 3;
INSERT INTO MenuHierachy SELECT 3, 15, 4;
INSERT INTO MenuHierachy SELECT 3, 16, 5;
INSERT INTO MenuHierachy SELECT 3, 17, 6;
INSERT INTO MenuHierachy SELECT 5, 18, 1;
INSERT INTO MenuHierachy SELECT 5, 19, 2;
INSERT INTO MenuHierachy SELECT 5, 20, 3;
INSERT INTO MenuHierachy SELECT 5, 21, 4;
INSERT INTO MenuHierachy SELECT 5, 22, 5;
INSERT INTO MenuHierachy SELECT 5, 23, 6;
INSERT INTO MenuHierachy SELECT 5, 24, 7;
INSERT INTO MenuHierachy SELECT 9, 25, 1;
INSERT INTO MenuHierachy SELECT 9, 26, 2;
INSERT INTO MenuHierachy SELECT 9, 27, 3;
INSERT INTO MenuHierachy SELECT 10, 28, 1;
INSERT INTO MenuHierachy SELECT 10, 29, 2;

INSERT INTO JobPosition SELECT 1, '投资人／总经理', current_timestamp;
INSERT INTO JobPosition SELECT 2, '部门经理', current_timestamp;
INSERT INTO JobPosition SELECT 3, '部门主管', current_timestamp;
INSERT INTO JobPosition SELECT 4, '车辆销售人员', current_timestamp;
INSERT INTO JobPosition SELECT 5, '金融保险人员', current_timestamp;
INSERT INTO JobPosition SELECT 6, '维修顾问', current_timestamp;
INSERT INTO JobPosition SELECT 7, '保修专员', current_timestamp;
INSERT INTO JobPosition SELECT 8, '调度员', current_timestamp;
INSERT INTO JobPosition SELECT 9, '维修技工', current_timestamp;
INSERT INTO JobPosition SELECT 10, '钣金技工', current_timestamp;
INSERT INTO JobPosition SELECT 11, '喷漆技工', current_timestamp;
INSERT INTO JobPosition SELECT 12, '钣喷二线人员', current_timestamp;
INSERT INTO JobPosition SELECT 13, '备件前台', current_timestamp;
INSERT INTO JobPosition SELECT 14, '部门二线人员', current_timestamp;
INSERT INTO JobPosition SELECT 15, '部门其他支援人员', current_timestamp;
INSERT INTO JobPosition SELECT 16, '财务行政', current_timestamp;

INSERT INTO SalesServiceJournalCategory SELECT 1, '新轿车零售', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 2, '新货车零售', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 3, '附加产品业务', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 4, '二手车零售', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 5, '维修收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 6, '配件收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 7, '钣喷收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 8, '新车其它收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 9, '二手车其它收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 10, '维修其它收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 11, '钣喷其它收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 12, '租恁收入', current_timestamp;
INSERT INTO SalesServiceJournalCategory SELECT 13, '税收', current_timestamp;

INSERT INTO SalesServiceJournalItem SELECT 1, '大客户销售返利', 8, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 2, '大客户采购（租车公司，政府机关）', 8, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 3, '二网销售', 8, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 4, '他店调车', 8, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 5, '零售销售返利', 8, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 6, '分期收入', 3, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 7, '保险收入', 3, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 8, '延保收入', 3, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 9, '牌照收入', 3, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 10, '其他附加收入', 3, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 11, '认证二手车零售', 4, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 12, '*备注*认证二手车翻新', 4, 1, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 13, '非认证二手车零售', 4, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 14, '*备注*非认证二手车翻新', 4, 1, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 15, '批发销售', 9, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 16, '库存调整', 9, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 17, '客户付费工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 18, '保修工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 19, '内部工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 20, '精品安装工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 21, '内外清洗、细节保养清洁工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 22, '其它工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 23, '未使用工时', 5, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 24, '外修', 10, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 25, '延保', 10, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 26, '客户－维修部', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 27, '保修', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 28, '内部', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 29, '精品', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 30, '客户－钣喷', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 31, '批发', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 32, '柜台零售', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 33, '其它营业外收入', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 34, '油品', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 35, '轮胎', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 36, '订货折扣或其它厂家返利', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 37, '库存调整', 6, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 38, '客户付费工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 39, '保修工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 40, '内部工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 41, '精品安装工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 42, '内外清洗、细节保养清洁工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 43, '其它工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 44, '未使用工时', 7, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 45, '外修', 11, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 46, '钣喷材料收入', 11, 0, '', current_timestamp;
INSERT INTO SalesServiceJournalItem SELECT 47, '汽车租恁', 12, 0, '', current_timestamp;

INSERT INTO Vehicle SELECT 1, '微型车 Mini', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 2, '小型车 Sub Compact - 雅力士1.6', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 3, '紧凑型 (A) Compact', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 4, '紧凑型 (B) Compact', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 5, '紧凑型 (C) Compact', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 6, '中型车 (A) Mid-Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 7, '中型车 (B) Mid-Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 8, '中型车 (C) Mid-Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 9, '大中型 (A) Full Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 10, '大中型 (B) Full Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 11, '大中型 (C) Full Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 12, '豪华车-紧凑型 (A) Luxury Sedan Compat', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 13, '豪华车-紧凑型 (B) Luxury Sedan Compat', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 14, '豪华车-中型 (A) Luxury Sedan Mid-Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 15, '豪华车-中型 (B) Luxury Sedan Mid-Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 16, '豪华车-中型 (C) Luxury Sedan Mid-Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 17, '豪华车-大型 (A) Luxury Sedan Full Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 18, '豪华车-大型 (B) Luxury Sedan Full Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 19, '豪华车-大型 (C) Luxury Sedan Full Size', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 20, '跑车 Sports Car - 杰路驰', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 21, '新能源车 Hybrid - 凯美瑞 尊瑞', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 22, '跨界车 Cross-Over', 1, 0, current_timestamp;
INSERT INTO Vehicle SELECT 23, 'SUV - (A) 紧凑型 Compact', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 24, 'SUV - (B) 紧凑型 Compact', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 25, 'SUV - (C) 紧凑型 Compact', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 26, 'SUV - (A) 中型 Mid 汉兰达 2.7 运动豪华版', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 27, 'SUV - (B) 中型 Mid 汉兰达 3.5 运动豪华版', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 28, 'SUV - (C) 中型 Mid Size 酷路泽', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 29, 'SUV - (A) 大型 (A) Large', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 30, 'SUV - (B) 大型 (B) Large', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 31, 'SUV - (C) 大型 (C) Large', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 32, 'SUV - (A) 豪华中型 Luxury Mid-Size', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 33, 'SUV - (B) 豪华中型 Luxury Mid-Size', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 34, 'SUV - (C) 豪华中型 Luxury Mid-Size', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 35, 'SUV - (A) 豪华大型 Luxury Large', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 36, 'SUV - (B) 豪华大型 Luxury Large', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 37, 'SUV - (C) 豪华大型 Luxury Large', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 38, 'MPV (A) 逸致 180G豪华版', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 39, 'MPV (B) Multi-Purpose Vehicle', 2, 0, current_timestamp;
INSERT INTO Vehicle SELECT 40, 'MPV (C) 埃尔法 3.5 豪华版', 2, 0, current_timestamp;

INSERT INTO InventoryDurationItem SELECT 1, '本品牌新车库存台次', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 2, '非本品牌新车库存台次', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 3, '其它车辆库存', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 4, '二手车库存金额', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 5, '本品牌备件库存', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 6, '本品牌精品库存', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 7, '非本品牌备件库存', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 8, '非本品牌精品库存', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 9, '轮胎库存', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 10, '本品牌新车库存金额', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 11, '非本品牌新车库存金额', current_timestamp;
INSERT INTO InventoryDurationItem SELECT 12, '二手车库存台次', current_timestamp;

INSERT INTO Duration SELECT 1, 0, 0, 30;
INSERT INTO Duration SELECT 2, 0, 31, 60;
INSERT INTO Duration SELECT 3, 0, 61, 90;
INSERT INTO Duration SELECT 4, 0, 91, null;
INSERT INTO Duration SELECT 5, 1, 0, 6;
INSERT INTO Duration SELECT 6, 1, 7, 9;
INSERT INTO Duration SELECT 7, 1, 10, 12;
INSERT INTO Duration SELECT 8, 1, 13, null;

INSERT INTO AccountReceivableDurationItem SELECT 1, '客户-维修、钣喷与备件', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 2, '销售应收帐款', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 3, '原厂', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 4, '租恁', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 5, '保修索赔', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 6, '保险理赔应收款', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 7, '分期与保险手续费', current_timestamp;
INSERT INTO AccountReceivableDurationItem SELECT 8, '其它应收帐款', current_timestamp;

INSERT INTO EmployeeFeeItem SELECT 1, '工时费', current_timestamp;
INSERT INTO EmployeeFeeItem SELECT 2, '客户付费工时', current_timestamp;
INSERT INTO EmployeeFeeItem SELECT 3, '保修工时', current_timestamp;
INSERT INTO EmployeeFeeItem SELECT 4, '内部工时', current_timestamp;
INSERT INTO EmployeeFeeItem SELECT 5, '精品安装工时', current_timestamp;
INSERT INTO EmployeeFeeItem SELECT 6, '内外清洗、细节保养清洁工时', current_timestamp;

INSERT INTO EmployeeFeeSummaryItem SELECT 1, '本月未结算工时', current_timestamp;
INSERT INTO EmployeeFeeSummaryItem SELECT 2, '本月实际工作天数', current_timestamp;
INSERT INTO EmployeeFeeSummaryItem SELECT 3, '本月实际维修车位数量', current_timestamp;

INSERT INTO GeneralJournalCategory SELECT 1, '变动费用', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 2, '销售费用', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 3, '人工费用', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 4, '半固定费用', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 5, '固定费用', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 6, '非经营性损益进项', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 7, '非经营性损益削项', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 8, '非销售类返利', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 9, '员工分红', current_timestamp;
INSERT INTO GeneralJournalCategory SELECT 10, '应收帐款', current_timestamp;

INSERT INTO GeneralJournalItem SELECT 1, '销售顾问薪酬', 1, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 2, '金融保险顾问薪酬', 1, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 3, '车辆交付费用', 1, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 4, '顾客满意度费用-新车、二手车', 1, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 5, '销售顾问以外的各部门员工薪酬', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 6, '广告费用', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 7, '车辆短期融资信贷利息', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 8, '库存维护、修复费用', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 9, '公司用车费用', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 10, '员工差旅培训费用', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 11, '商品运输费用', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 12, '公司服装费用', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 13, '顾客满意度费用-维修、售后等', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 14, '车间低耗品及工具', 2, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 15, '公司领导层薪酬', 3, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 16, '部门经理薪酬', 3, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 17, '福利', 3, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 18, '非正式人员费用', 3, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 19, '会员费、非品牌协会、出版物订阅费', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 20, '办公用品', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 21, '外包服务费用', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 22, '邮资', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 23, '差旅费', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 24, '审计与法律服务费用', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 25, '软件、数据维护费用', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 26, '捐赠款', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 27, '其它利息及银行手续费', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 28, '保安、清洁费用', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 29, '通讯费 (电话、传真、网络)', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 30, '其它 (含安全生产费用)', 4, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 31, '土地租金或按揭月供利息', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 32, '公司用车以外的固定资产保险', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 33, '水电费用', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 34, '房屋建筑物维护', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 35, '房产税 (按受益期归集)', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 36, '房屋折旧及购入土地摊销', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 37, '房屋外的固定资产折旧', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 38, '营业税金附加及其它税费', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 39, '一般保险', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 40, '设备维护', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 41, '证照费', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 42, '其它小额固定费用', 5, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 43, '现金折扣所得', 6, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 44, '利息所得', 6, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 45, '坏帐回收', 6, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 46, '营业外收入', 6, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 47, '代收', 6, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 48, '现金折扣获准', 7, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 49, '坏帐费用', 7, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 50, '董事费用', 7, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 51, '营业外支出 (不含捐款)', 7, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 52, '代付', 7, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 53, '建店返利', 8, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 54, '市场营销补贴', 8, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 55, '满意度奖励', 8, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 56, '其他奖励', 8, 0, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 57, '员工/团队奖金', 9, 1, current_timestamp;
INSERT INTO GeneralJournalItem SELECT 58, '坏帐准备金', 10, 2, current_timestamp;

INSERT INTO TaxJournalItem SELECT 1, '所得税', current_timestamp;