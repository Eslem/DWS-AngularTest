/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module("app", []);
/*
 app.controller("EntidadBancariaController", ['$scope', '$log', '$http', function($scope, $log, $http) {
 
 $scope.entidadBancaria = {
 idEntidadBancaria: 0,
 nombre: "Nombre",
 codigoEntidad: "0000",
 fechaCreacion: ""
 }
 
 var config = {
 method: "GET",
 url: "get.json.jsp?idEntidadBancaria=1"
 }
 
 var response = $http(config);
 
 response.success(function(data, status, headers, config) {
 $scope.entidadBancaria = data;
 });
 }]);
 */
function remoteResourceProvider() {
    var _baseUrl;
    this.setBaseUrl = function(baseUrl) {
        _baseUrl = baseUrl;
    };
    this.$get = ['$http', function($http) {
            return new RemoteResource($http, _baseUrl);
        }];
}



function RemoteResource($http, baseUrl) {
    this.get = function(fnOk, fnError) {
        $http({
            method: 'GET',
            url: baseUrl + '/get.json.jsp?idEntidadBancaria=1'
        }).success(function(data, status, headers, config) {
            fnOk(data);
        }).error(function(data, status, headers, config) {
            fnError(data, status);
        });
    };
}

app.constant("baseUrl", ".");
app.provider("remoteResource", remoteResourceProvider);
app.config(['baseUrl', 'remoteResourceProvider', function(baseUrl, remoteResourceProvider) {
        remoteResourceProvider.setBaseUrl(baseUrl);
    }]);
app.controller("EntidadBancariaController", ['$scope', 'remoteResource', function($scope, remoteResource) {
        $scope.entidadBancaria = {
            idEntidadBancaria: 0,
            nombre: "Nombre",
            codigoEntidad: "0000",
            fechaCreacion: ""
        }
        
        remoteResource.get(function(data){
            $scope.entidadBancaria=data;
        }, function (data, status){
            alert("Error en peticion, error: "+status);
        });
    }]);

