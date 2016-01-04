<script type="text/javascript">
angular.module('edit', []).controller("edit", function($scope, $http) {
    var iniflag = 0;
    //初始化form数据
    $scope.formData = {
        begin_time: "{:I('get.begin_time') ? I('get.begin_time') : date('Y-m-d')}",
        end_time: "{:I('get.end_time') ? I('get.end_time') : date('Y-m-d',time()+24*60*60)}"
    };
    $scope.count = 0;
    $scope.counts = new Array();
    $scope.rooms = new Array();
    $scope.room_id = "{:I('get.id') ? I('get.id') : 0}";
    $scope.days = 0;
    $scope.per_price = 0;
    $scope.showSubmit = 0;

    //间数量变为前台可以select选择的数组
    var getCounts = function(index) {
        var counts = new Array();
        var i = 0;
        while (i < index) {
            counts.push(++i);
        }
        return counts;
    }

    //查询房间
    var query = function() {
        var beginTime = new Date($scope.formData.begin_time);
        var endTime = new Date($scope.formData.end_time)
        $scope.days = Math.abs(endTime - beginTime) / (60 * 60 * 24 * 1000);
        $http({
            method: 'POST',
            url: '__ROOT__/admin.php/Room/getRemainderRoomsAjax.html',
            data: $.param($scope.formData),
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
        }).success(function(data) {
            console.log(data);
            if (data.status == "success") {
                $scope.rooms = data.lists;
                for (var i = 0, len = $scope.rooms.length; i < len; i++) {
                    if ($scope.room_id === $scope.rooms[i].id) {
                        $scope.per_price = fToy($scope.rooms[i].price);
                        $scope.counts = getCounts($scope.rooms[i].count);
                        $scope.total_pay = $scope.count * $scope.per_price * $scope.days;
                        break;
                    }
                }
            }
        });
    };

    $scope.$watch("formData.begin_time", function() {
        query();
    });
    $scope.$watch("formData.end_time", function() {
        query();
    });

    $scope.test = function() {
        console.log($scope.per_price);
        console.log($scope.room_id);
        console.log($scope.days);
    }

    //房间变化，带来价格变化
    $scope.$watch("room_id", function() {
        for (var i = 0, len = $scope.rooms.length; i < len; i++) {
            if ($scope.room_id === $scope.rooms[i].id) {
                $scope.per_price = fToy($scope.rooms[i].price);
                $scope.counts = getCounts($scope.rooms[i].count);
                $scope.total_pay = $scope.count * $scope.per_price;
                break;
            }
        }
    });

    $scope.$watch("count", function() {
        $scope.total_pay = $scope.count * $scope.per_price * $scope.days;
    });

    $scope.$watch("days", function() {
        $scope.total_pay = $scope.count * $scope.per_price * $scope.days;
    });

    $scope.$watch("total_pay", function() {
        if ($scope.total_pay > 0) {
            $scope.showSubmit = 1;
        } else {
            $scope.showSubmit = 0;
        }
    })

});
</script>
