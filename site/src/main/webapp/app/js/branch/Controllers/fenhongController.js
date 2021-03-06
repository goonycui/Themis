angular.module('fenhong.controller', [])
    .controller('fenhongCtrl', ['$scope', 'Dealer', 'DealerService', '$filter', function ($scope, Dealer, DealerService, $filter) {
        $scope.generalSummary = [];
        $scope.generalSales = [];

        $scope.amountChange = function (type, list, curOne) {
            if (!this.form.amount.$invalid) {
                var lists = eval(list);
                var newSummary = 0;
                var filter = {categoryID: curOne.categoryID};
                var filtered = $filter('filter')(lists, filter);
                $.each(filtered, function (index, filteredOne) {
                    if (!isNaN(filteredOne.amount)) {
                        newSummary += Number(filteredOne.amount);
                    }
                });
                var summary = eval(type);
                summary[curOne.categoryID] = newSummary;
            }
        }

        var salesSet = [];
        var saleItems = Dealer.getGeneral({}, function () {
            $.each(saleItems.items, function (index, saleItem) {
                saleItem.sign = "";
                salesSet[saleItem.id] = saleItem;
                $scope.generalSummary[saleItem.categoryID] = 0;
            });

            var saleRevenues = Dealer.getGeneralJournal({dealerID: DealerService.getDealerId(), validDate: DealerService.getValidDate(), departmentID: DealerService.getSelectedDept()},
                function () {
                    $.each(saleRevenues.detail, function (index, saleRevenue) {
                        var oneSale = salesSet[saleRevenue.itemID];
                        oneSale.amount = saleRevenue.amount;
                        if (!isNaN(oneSale.amount)) {
                            $scope.generalSummary[oneSale.categoryID] += Number(oneSale.amount);
                        }
                    });

                    $.each(salesSet, function (index, sale) {
                        if (sale && sale.id) {
                            $scope.generalSales.push(sale);
                        }
                    });

                    $scope.$apply();

                    $('.hasTooltip').each(function () {
                        $(this).qtip({
                            content: {
                                text: $(this).next('div')
                            },
                            hide: {
                                event: 'unfocus'
                            },
                            position: {
                                at: 'bottom left',
                                target: $(this)
                            },
                            style: {
                                def: false,
                                classes: 'tip qtip-rounded qtip-bootstrap'
                            }
                        });
                    });
                })
        });

        $scope.autoSaveGeneralRevenue = function () {
            if (!this.form.$invalid) {
                var postData = {};
                postData.dealerID = DealerService.getDealerId();
                postData.departmentID = DealerService.getSelectedDept();
                postData.validDate = DealerService.getValidDate();
                postData.updateBy = DealerService.getUserName();
                postData.detail = [];
                postData.detail.push({
                    itemID: this.generalSale.id,
                    amount: this.generalSale.amount
                });

                var success = function () {
                    this.generalSale.sign = "icon-check-sign green";
                    var currentDate = new Date();
                    $scope.autoSaveTime = "上次自动保存于" + currentDate.getHours() + "点" + currentDate.getMinutes() + "分" + currentDate.getSeconds() + "秒";
                    $scope.autoSaveClass = "text-success";
                    $scope.markEdit();
                };

                var failed = function () {
                    this.generalSale.sign = "icon-remove-sign red";
                    $scope.autoSaveTime = "自动保存失败";
                    $scope.autoSaveClass = "text-error";
                }

                Dealer.saveGeneralJournal({}, postData, $.proxy(success, this), $.proxy(failed, this));
            }
        }

        $scope.markEdit = function () {
            var postData = {};
            postData.dealerID = DealerService.getDealerId();
            postData.itemID = DealerService.getSelectedMenu();
            postData.validDate = DealerService.getValidDate();
            postData.updateBy = DealerService.getUserName();

            Dealer.saveStatus({}, postData, function () {
                var navLink = $("#" + DealerService.getSelectedMenu());
                navLink.children().remove();
                    $scope.$parent.$parent.editMenus.push(parseInt(DealerService.getSelectedMenu()));
                    navLink.append($('<i class="icon-edit" style="color:green;display:inline"></i>'));

                    if ($('#collapseTwo').find('i.icon-edit').size() == 8) {
                        $('#two').append($('<i class="icon-edit" style="color:green;display:inline"></i>'));
                    }
            });
        }
    }]);