(function() {
  "use strict";

  angular.module("app").controller("codeProgramsCtrl",
    function($scope, $http) {

      $scope.setup = function() {
        $http.get("/api/v1/code_programs.json").then(function(response) {
          $scope.codePrograms = response.data;
          console.log($scope.codePrograms);
        });

        $scope.addCodeProgram = function(newCodeProgram) {

        };
        $http.post('/api/v1/code_programs.json', newCodeProgram).then(function(response) {
          var codeProgramCallback = response.data;
          $scope.codeProgams.push(codeProgramCallback);
        }, function(error) {
          $scope.errorMessages = error.data.errors
        });
      }
    window.$scope = $scope;
    });
  
}());