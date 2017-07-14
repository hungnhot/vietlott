
jQuery(function ($) {

  $(function () { 
    $.ajax({
      type: "get",
      url: "results/get_result"
    }).done(function( data ) {
      $myChart = Highcharts.chart('chart-vietlott', {
        chart: {
          type: 'column'
        },
        title: {
          text: 'Vietlott result'
        },
        xAxis: {
          type: 'category'
        },
        yAxis: {
          title: {
            text: 'Times'
          }
        },
        legend: {
          enabled: false
        },
        series: [{
          name: 'Number',
          data: data.result,
          dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y}', // one decimal: {point.y:.1f}
            y: 10, // 10 pixels down from the top
            style: {
              fontSize: '13px',
              fontFamily: 'Verdana, sans-serif'
            }
          }
        }]
      });

      $( ".highcharts-container svg text:contains('Highcharts.com')" ).css( "display", "none" )
    });
  });
});