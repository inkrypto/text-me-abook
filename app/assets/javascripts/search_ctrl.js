(function(){
  "use strict";
  angular.module("app").controller("searchCtrl", function($scope, $http){

    
      $scope.search = function () {
        if(!$scope.searchTerm){
          return;
        }

        $http.get("search.json?searchTerm=" + $scope.searchTerm).then(function(response){
          $scope.textbooks = response.data["textbooks"];
        });
      }
      window.scope = $scope;

});
})();