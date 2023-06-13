
document.addEventListener("DOMContentLoaded", function() {
  // APIキーを取得
  var apiKey = '<%= Rails.application.config.google_maps_api_key %>';

  // Google Maps APIを非同期に読み込む
  var script = document.createElement("script");
  script.src = "https://maps.googleapis.com/maps/api/js?key=" + apiKey;
  script.async = true;
  script.defer = true;
  document.head.appendChild(script);

  // Google Maps APIが読み込まれたら地図を表示する
  script.addEventListener("load", function() {
    var map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 35.6895, lng: 139.6917 }, // 初期の地図の中心座標
      zoom: 12 // 初期のズームレベル
    });

    // カフェの位置情報を取得し、マーカーを地図上に表示する処理を追加することもできます
  });
});