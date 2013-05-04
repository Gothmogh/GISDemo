<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GIS Demo</title>
        <style type="text/css">
            #map {
                width: 1280px;
                height: 1024px;
                border: 1px solid black;
            }
        </style>	    
        <script src="http://openlayers.org/api/OpenLayers.js"></script>
<!--        <script type="text/javascript">
	        
            var map, layer;
	
            function init(){
                map = new OpenLayers.Map( 'map' );
                layer = new OpenLayers.Layer.MapServer( "OpenLayers WMS", 
                "http://labs.metacarta.com/wms/vmap0", {layers: 'basic'} );
                map.addLayer(layer);
                map.zoomToMaxExtent();
            }
	       
        </script>-->
        
        <script type="text/javascript">
        var map, layer;
        function init(){
            map = new OpenLayers.Map( 'map');
            layer = new OpenLayers.Layer.OSM( "Simple OSM Map");
            map.addLayer(layer);
            map.setCenter(
                new OpenLayers.LonLat(-68.8, -32.8).transform(
                    new OpenLayers.Projection("EPSG:4326"),
                    map.getProjectionObject()
                ), 12
            );    
        }
    </script>
    </head>
    <body onload="init()">
        <div id="map"></div>
    </body>
</html>
