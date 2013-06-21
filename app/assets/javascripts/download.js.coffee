@mod = angular.module( 'download', [ 'ngResource', 'ng-rails-csrf' ] )
@mod.controller( 'DownloadCtrl', [ '$scope', '$resource', '$window', ($scope,$resource,$window) ->
        $scope.link = ""
        $scope.download_count = 0

        Resource = $resource '/welcome/:action', {},
                download : { method: 'POST', params: { action: 'download' } }

        $scope.refresh = () ->
                $scope.loading = true
                Resource.get (response) ->
                        $scope.loading = false
                        $scope.download_count = response.download_count

        $scope.download = () ->
                $scope.loading = true
                Resource.download {}, {}, (response) ->
                        $scope.download_count = response.download_count
                        $scope.loading = false
                        $window.location.href = $scope.link
        ] )