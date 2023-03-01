// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["16", "17", "18", "19", "20", "21", "22", "23"],
    datasets: [{
      label: "Revenue",
      backgroundColor: "#3462DC",
      borderColor: "rgba(2,117,216,1)",
      data: [90, 86, 63, 100, 96, 98, 92, 100],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 10
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 150,
          maxTicksLimit: 5,
          display: false
        },
        gridLines: {
          display: false
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
