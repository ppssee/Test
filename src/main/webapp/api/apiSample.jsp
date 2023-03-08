<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>a p i 샘 플 화 면</title>
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId="></script>
	</head>
	<body>
		<h1>api 샘플</h1>
		<h2>네이버 지도</h2>

		<div id="map" style="width:100%;height:400px;"></div>
		
		<script type="text/javascript">
			var mapOptions = {
			    center: new naver.maps.LatLng(37.5679212, 126.9830358), // 위도, 경도
			    zoom: 17,
			};
			var map = new naver.maps.Map('map', mapOptions);
			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(37.5679212, 126.9830358),
			    map: map
			});
			var contentString = "인포윈도우";
			var infowindow = new naver.maps.InfoWindow({
			    content: contentString
			});
			
			
			infowindow.open(map, marker)
			
			// 지도 클릭 되었을떄
			naver.mapps.Event.addListener(map, "click", function(e)){
				if(infowindow != null){
					if(infowindow.getmap())
						info.windows.close()	
					}	
				}
			}
			// 마커 클릭되었읃=
			infowindow.open(map, marker)
			naver.mapps.Event.addListener(map, "click", function(e)){
				if(infowindow != nuu){infowindow.open(map, marker)
					naver.mapps.Event.addListener(map, "click", function(e)){
					if(infowindow != null){
						if(infowindow.getmap())
							info.windows.close()	
						}
					else{
						infowindow = new naver.maps.infoWindow({
							
						});
						infowindow.open(map,market)
					}
					}
				}
				
			}
			
			
			
			
		</script>
	</body>
</html>