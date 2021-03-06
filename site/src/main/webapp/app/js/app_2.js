'use strict';

angular.module('themis', ['ngRoute', 'themis.directives', 'themis.controllers', 'themis.services', 'themis.config', 'guest.controllers', 'ngSanitize',
        'branch.services', 'branch.controllers', 'lirun.controller', 'jingying.controller','fenhong.controller', 'sunyi.controller', 'kucun.controller', 'zhangkuan.controller', 'renyuan.controller', 'tax.controller',
        'masterApp.config', 'masterApp.services','masterApp.controllers', 
        'keyNetProfit.controllers', 
        'keyOpProfit.controllers', 
        'keyOpProfitPerRevenue.controllers', 
        'keyOpProfitPerMargin.controllers', 
        'keyAccountReceivablePercentage.controllers', 
        'keyPostSalesOpProfitPerMargin.controllers', 
        'keyPostSalesAllOpProfitPerMargin.controllers', 
        'keyPostSalesRevenuePerMargin.controllers', 
        'overallAbs.controllers', 
        'overallRevenue.controllers', 
        'overallOpProfit.controllers', 
        'overallNonRecurrentPNL.controllers', 
        'overallNonSalesProfit.controllers', 
        'overallMargin.controllers', 
        'overallExpense.controllers', 
		'overallPercentage.controllers', 
		'overallExpPercentage.controllers', 
		'overallHRAnalysis.controllers', 
		'departmentOp.controllers', 
		'departmentAbs.controllers', 
		'departmentOpComp.controllers', 
		'departmentPercentage.controllers',
		'salesAbs.controllers',
		'salesDepartmentAbs.controllers',
		'salesPercentage.controllers',
		'salesDepartmentPercentage.controllers',
		'ardOverall.controllers',
		'ardSales.controllers',
		'ardPostSales.controllers',
		'ardFactory.controllers',
		'postSalesRevenue.controllers',
		'postSalesMargin.controllers',
		'postSalesExpense.controllers',
		'maintenanceIncome.controllers',
		'sparePartIncome.controllers',
		'sheetSprayIncome.controllers',
        'admin.controllers']).
    config(['$routeProvider', function($routeProvider) {
    	$routeProvider.when('/head/report', {templateUrl: 'partials/head/edit.html', controller: 'headEditCtrl'});
    	//$routeProvider.when('/head/report', {templateUrl: 'partials/admin/admin.html', controller: 'adminCtrl'});
        $routeProvider.otherwise({redirectTo: '/head/report'});
    }]);
 