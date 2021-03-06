'use strict';

angular.module('branch.tool.controllers', [])
    .controller('branchToolCtrl', ['$scope', '$location', 'Auth', 'UserService', function ($scope, $location, Auth, UserService) {
        $scope.innerPage = 'partials/branch/tool/changePass.html';

        $scope.jumpTo = function (page) {
            $scope.innerPage = 'partials/branch/tool/' + page + '.html';
        }
    }])
    .controller('branchChangePassCtrl', ['$scope', '$location', 'Auth', 'UserService', 'Dealer', 'User', function ($scope, $location, Auth, UserService, Dealer, User) {
        $scope.userAlias = '';
        $scope.curPassword = "";
        $scope.password1 = "";
        $scope.password2 = "";

        $scope.msg = "";
        $scope.msgClass = "";

        $scope.resetPass = function(){
            var user = {};
            user.username = UserService.getCurUserAlias();
            user.oldPassword = $scope.curPassword;
            user.newPassword = $scope.password1;
            User.resetPass({}, user, function(){
                $scope.msg = "密码修改成功！";
                $scope.msgClass = "text-success";
            }, function(error){
                if (error.data.errorMsg == 'old password equals to the new password')
                {
                    $scope.msg = "密码修改失败，新旧密码不能相同。";
                    $scope.msgClass = "text-error";
                }
                else
                {
                    $scope.msg = "密码修改失败，请稍后再试或联系管理员。";
                    $scope.msgClass = "text-error";
                }
            });
        }

    }])
;