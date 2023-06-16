document.addEventListener('DOMContentLoaded', function() {
  // 地図の初期化処理
  var map = new google.maps.Map(document.getElementById('map'), {
    // 地図のオプション設定
    center: { lat: 35.6895, lng: 139.6917 }, // 地図の中心座標
    zoom: 12 // ズームレベル
  });

  // カフェの位置情報を取得し、マーカーを追加する処理などを記述
  // ...
});