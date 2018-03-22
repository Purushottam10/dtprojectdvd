var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function(){
       $http.get('http://localhost:9003/dairyproduct/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
       });
    };

    $scope.clearCart = function(){
        $http.del('http://localhost:9003/dairyproduct/rest/cart/' + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
    		alert('in addtocart');
        $http.put('http://localhost:9003/dairyproduct/rest/cart/add/' + productId).success(function (){
            alert('Product successfully added to the cart!');
        });
    };

    $scope.removeFromCart = function(productId){
        $http.put('http://localhost:9003/dairyproduct/rest/cart/remove/' + productId).success(function(data){
           $scope.refreshCart();
        });
    };

    $scope.calTotal = function(){
        var total = 0;

        for (var i = 0; i < $scope.cart.cartItems.length; i++){
            total += $scope.cart.cartItems[i].totalPrice;
        }

        return total;
    }
});