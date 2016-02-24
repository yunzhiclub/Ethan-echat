<script id="templates/indexEvaluation.html" type="text/ng-template">
  <ion-view view-title="洛克高级酒店公寓" ng-controller='EvaluationCtrl'>
 <div class="bar bar-header">
  <a ng-href='#/tab/home'><button class="button button-icon icon ion-ios-arrow-back"></button></a>
  <div class="h1 title">查看评论</div>
</div>
    <ion-content class='has-header'>
    <div class="list">
    {/*<div ng-bind="evaluations | json"></div>*/}
      <div class="item item-avatar" href="#" ng-repeat='evaluation in evaluations'>
        <img ng-src="{{evaluation.customer__headimgurl}}" >
          <div class="row">
            <div class="col col-40">      
              <h2>{{evaluation.customer__nickname}}</h2>
            </div>
            <div class="col">
            <i class="icon {{evaluation.icon[0]}}" style="color:#FF9900;"></i>
            <i class="icon {{evaluation.icon[1]}}" style="color:#FF9900;"></i>
            <i class="icon {{evaluation.icon[2]}}" style="color:#FF9900;"></i>
            <i class="icon {{evaluation.icon[3]}}" style="color:#FF9900;"></i>
            <i class="icon {{evaluation.icon[4]}}" style="color:#FF9900;"></i>
            </div>
          </div>
          <div class="row stable">
            <h5><p>{{evaluation.room__title}}&nbsp;&nbsp;价格:￥{{evaluation.price | fenToYuan}}</p></h5>
          </div>
          <div class="row stable">
          <h5><p>{{evaluation.order__begin_time | date:'yyyy-MM-dd'}}至{{evaluation.end_time | date:'yyyy-MM-dd'}}</p></h5>
          </div>
          <p>{{evaluation.evaluation}}</p>
          
          <div class="row" ng-repeat='url in evaluation.url'>
          <div class="list">
            <div class="item-thumbnail-left">
              <img ng-src="{{url}}">
            </div>
          </div>
          </div>
      </div>
    </div>
    <ion-infinite-scroll ng-if="moreDataCanBeLoaded" on-infinite="loadMoreData()">
</ion-infinite-scroll>
    
 

</ion-content>
</ion-view>
</script>