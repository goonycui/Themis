'use strict';

angular.module('salesDepartmentPercentage.controllers', [])
	.controller('salesDepartmentPercentageCtrl', ['$scope', 'ReportRestClient', 'ReportService', 'config', function($scope, restClient, reportService, config) {
		$scope.selectReportYear = function() {
    		reportService.setCurrentYear($scope.selectedYearOption.id);
    		$scope.showReport();
    	};
    	
		$scope.selectReportMonth = function() {
    		reportService.setMonthOfYear($scope.selectedMonthOption.id);
    		$scope.showReport();
    	};
		$scope.selectReportDepartment = function() {
    		if ( $scope.selectedDepartmentOption.name == '新车部' ) {
	    		$scope.charts = [
		    		{id: 'report_newCarRetail', index:2, text:'零售销量（轿车）', display:true},
		    		{id: 'report_newVanRetail', index:3, text:'零售销量（货车）', display:true},
		    		{id: 'report_wholesale', index:0, text:'批发销量', display:false},
		    		{id: 'report_other', index:1, text:'他店调车量', display:false}];
    		} else {
    			$scope.charts = [
		    		{id: 'report_retail', index:4, text:'零售销量', display:true},
		    		{id: 'report_wholesale', index:0, text:'批发销量', display:false}];
    		} 
    		
    		$scope.showReport();
    	};
		
		$scope.showReport = function() {
        	var params = {year: reportService.getCurrentYear(), monthOfYear: reportService.getMonthOfYear(), departmentID: $scope.selectedDepartmentOption.value, denominator: 0};
        	for ( var i=0; i< $scope.charts.length;i++ ) {
        		if ( $scope.charts[i].display == true ) {
        			$scope.draw(restClient(config.currentMode).queryDealerSalesPercentgeReport, params, $scope.charts[i].index);
        		} 
        	}
        };
        
        $scope.draw = function (restClient, params, index) {
	        Highcharts.theme = config.highChartsTheme;
            Highcharts.setOptions(Highcharts.theme); 
 			
            restClient(params, function(data) {
            	var chartData = [
				        	{
				        		id: 'report_wholesale',
				        		title: '批发销量' + '/' + '销售总量',
				        		yAxisTitle: '批发销量',
				        		series: { previous:[], current:[], previousReference:[], currentReference:[], currentPercentage:[] }
				        	},
				        	{
				        		id: 'report_other',
				        		title: '他店调车量' + '/' + '销售总量',
				        		yAxisTitle: '他店调车量',
				        		series: { previous:[], current:[], previousReference:[], currentReference:[], currentPercentage:[]}
				        	},
				        	{
				        		id: 'report_newCarRetail',
				        		title: '零售销量（轿车）' + '/' + '销售总量',
				        		yAxisTitle: '零售销量（轿车）',
				        		series: { previous:[], current:[], previousReference:[], currentReference:[], currentPercentage:[] }
				        	},
				        	{
				        		id: 'report_newVanRetail',
				        		title: '零售销量（货车）' + '/' + '销售总量',
				        		yAxisTitle: '零售销量（货车）',
				        		series: { previous:[], current:[], previousReference:[], currentReference:[], currentPercentage:[]}
				        	},
				        	{
				        		id: 'report_retail',
				        		title: '零售销量' + '/' + '销售总量',
				        		yAxisTitle: '零售销量',
				        		series: { previous:[], current:[], previousReference:[], currentReference:[], currentPercentage:[] }
				        	}
				    ]; 
            	var chartCategories = [{ categories: null }];
            	var dealers = [];
            	var avgDetail = data.detail[0].detail;
	            for (var i=0; i<avgDetail.length; i++) {
						dealers[i] = avgDetail[i].code;
	            		
	            		chartData[0].series.previous[i] = avgDetail[i].wholesale.amount * 100;
	            		chartData[0].series.previousReference[i] = avgDetail[i].wholesale.reference * 100;
	            		
	            		chartData[1].series.previous[i] = avgDetail[i].other.amount * 100;
	            		chartData[1].series.previousReference[i] = avgDetail[i].other.reference * 100;
	            		
	            		chartData[2].series.previous[i] = avgDetail[i].newCarRetail.amount * 100;
	            		chartData[2].series.previousReference[i] = avgDetail[i].newCarRetail.reference * 100;
	            	
	            		chartData[3].series.previous[i] = avgDetail[i].newVanRetail.amount * 100;
	            		chartData[3].series.previousReference[i] = avgDetail[i].newVanRetail.reference * 100;
	            	
	            		chartData[4].series.previous[i] = avgDetail[i].retail.amount * 100;
	            		chartData[4].series.previousReference[i] = avgDetail[i].retail.reference * 100;
	            	
	            };
	            
				chartCategories[0].categories = dealers;
				
	            var chartSubtitle = '月对比';
	            var chartColumnAvg = '月均';
	            var chartColumnAvgRef = '月均参考值';
	            
			    var currentData = chartData[index];
			    var chartWidth = $(window).width() * 0.60;
			    if ( reportService.getFullScreen() ) {
			    	chartWidth = $(window).width();
				}
			        
			    $('#' + currentData.id).highcharts({
			                chart: {
			                    zoomType: 'xy',
			                    height:$(window).height()*0.60,
			                    width:chartWidth
			                },
			                title: {
			                    text: currentData.title
			                },
			                subtitle: {
			                    text: chartSubtitle
			                },
			                xAxis: chartCategories,
			                yAxis: [{
			                    title: {
			                        text: currentData.yAxisTitle + '百分比 (%)'
			                    }
			                }
							],
			                tooltip: {
			                    formatter: function() {
			                        var tooltip = this.series.name +': '+ this.y + '%' +'<br/>';
			                        return  tooltip;
			                    },
			                    useHTML: true
			                },
			                plotOptions: {
			                    column: {
			                    	cursor: 'pointer'
			                    }
			                },
			                series: [
			                    {
			                        type: 'column',
			                        name: chartColumnAvg,
			                        data: currentData.series.previous
			                    },
			                    {
			                        type: 'spline',
			                        name: chartColumnAvgRef,
			                        data: currentData.series.previousReference
			                    }
			                ]
			        	});
			  });
		};
    	
        $scope.toggleFullScreen = function() {
            if (reportService.getFullScreen()) {
                $('#container_div').addClass('container');
                $('#container_div').removeClass('row-fluid');
                $("#header").removeClass('hide');
                $("#nav_div").removeClass('hide');
                $("#report_div").removeClass('span12');
                $("#report_div").addClass('span9');
                reportService.setFullScreen(false);
                $scope.showReport();
            } else {
                $('#container_div').removeClass('container');
                $('#container_div').addClass('row-fluid');
                $("#header").addClass('hide');
                $("#nav_div").addClass('hide');
                $("#report_div").removeClass('span9');
                $("#report_div").addClass('span12');
                reportService.setFullScreen(true);
                $scope.showReport();
            }
        };

		$scope.charts = [
		    		{id: 'report_newCarRetail', index:2, text:'零售销量（轿车）', display:true},
		    		{id: 'report_newVanRetail', index:3, text:'零售销量（货车）', display:true},
		    		{id: 'report_wholesale', index:0, text:'批发销量', display:false},
		    		{id: 'report_other', index:1, text:'他店调车量', display:false}];
		    		
    	$scope.departmentOptions = [
    		{name:'新车部', value:1},
    		{name:'二手车部', value:2}];
    	$scope.selectedDepartmentOption = $scope.departmentOptions[0];
    	
    	reportService.setFullScreen(false);
    	var currentDate = new Date();
  		reportService.setCurrentYear(currentDate.getFullYear());
  		reportService.setMonthOfYear(currentDate.getMonth());
		$scope.yearOptions = reportService.getYearList();
		$scope.selectedYearOption = $scope.yearOptions[0];
		
		$scope.monthOptions = reportService.getMonthList();
		$scope.selectedMonthOption = $scope.monthOptions[reportService.getMonthOfYear()-1];
    	
		// called on page is loaded
		$scope.showReport();
  }]);
