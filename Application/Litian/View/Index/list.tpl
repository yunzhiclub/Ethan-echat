<!DOCTYPE html>
<html>
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
  <title></title>

  <link href="__LIB__/ionic/css/ionic.css" rel="stylesheet">
  <link href="__CSS__/style.css" rel="stylesheet">

    <!-- IF using Sass (run gulp sass first), then uncomment below and remove the CSS includes above
    <link href="css/ionic.app.css" rel="stylesheet">
  -->


  <!-- ionic/angularjs js -->
  <script src="__LIB__/ionic/js/ionic.bundle.js"></script>

  <!-- your app's js -->
  <script src="__JS__/app.js"></script>

</head>

  <body ng-app="starter">

  <ion-pane>
    <ion-header-bar class="bar-stable">
      <div class="bar bar-header bar-positive">
        <a href="" class="button button-icon icon ion-chevron-left"></a>
        <h4 class="tittle">订单填写</h4>
      </div>
      <div class="bar bar-subheader">
        <h4 class="tittle">预付须知：</h4>
      </div>
    </ion-header-bar>
    <ion-content class="bar-content has-subheader">

      <div class="list list-inset">
        <div class="item">
          时间：2015.11.23
        </div>
        <div class="item">
          房型：大床房
        </div>
        <div class="item">
          配置：有窗、WiFi、电视、热水
        </div>
        <div class="item">
          人数：2人
        </div>
        <div class="item">

          <div class="list">
            <label class="item item-input">
              <span class="input-label">房间数：</span>
              <input type="text" />
            </label>
            <label class="item item-input">
              <span class="input-label">到店时间：</span>
              <select>
                <option selected>14:00-次日04：00</option>
              </select>
            </label>
            <label class="item item-input">
              <span class="input-label">入住人：</span>
              <input type="text" />
            </label>
            <label class="item item-input">
              <span class="input-label">手机：</span>
              <input type="text" />
            </label>
          </div>
        </div>
        <div class="item">
          温馨提示：注意到店时间为------
        </div>
        <div class="item">
            <ul class="list">
              <li class="item item-checkbox">
                 <label class="checkbox">
                   <input type="checkbox">
                 </label>
                 使用我的积分200 换打折卡
              </li>
            </ul>

        </div>
      </div>

    </ion-content>
    <div class="bar bar-footer">
      <div class="tittle"><h4>在线支付：￥365.00</h4></div>
      <div class="button button-large button-positive pull-right">提交订单</div>
    </div>
  </ion-pane>
  </body>
</html>
