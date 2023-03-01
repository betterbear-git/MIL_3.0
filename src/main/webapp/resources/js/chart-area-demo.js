// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx1 = document.getElementById("myAreaChart1");
var myLineChart = new Chart(ctx1, {
  type: 'line',
  data: {
    labels: ["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7"],
    datasets: [{
      label: "Sessions",
      lineTension: 0,
      backgroundColor: "rgba(52, 98, 220, 0.5)",
      borderColor: "#3462DC",
      pointRadius: 2,
      pointBackgroundColor: "rgba(255,255,255,0.8)",
      pointBorderColor: "rgba(52, 98, 220, 0.5)",
      pointHoverRadius: 0,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: [10, 30, 26, 18, 18, 28, 32],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7,
          display: false
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 40,
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

var ctx2 = document.getElementById("myAreaChart2");
var myLineChart = new Chart(ctx2, {
  type: 'line',
  data: {
    labels: ["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7"],
    datasets: [{
      label: "Sessions",
      lineTension: 0,
      backgroundColor: "rgba(52, 98, 220, 0.5)",
      borderColor: "#3462DC",
      pointRadius: 2,
      pointBackgroundColor: "rgba(255,255,255,0.8)",
      pointBorderColor: "rgba(52, 98, 220, 0.5)",
      pointHoverRadius: 0,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: [10, 30, 36, 28, 18, 28, 32],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7,
          display: false
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 40,
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

var ctx3 = document.getElementById("myAreaChart3");
var myLineChart = new Chart(ctx3, {
  type: 'line',
  data: {
    labels: ["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7"],
    datasets: [{
      label: "Sessions",
      lineTension: 0,
      backgroundColor: "rgba(52, 98, 220, 0.5)",
      borderColor: "#3462DC",
      pointRadius: 2,
      pointBackgroundColor: "rgba(255,255,255,0.8)",
      pointBorderColor: "rgba(52, 98, 220, 0.5)",
      pointHoverRadius: 0,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: [10, 30, 36, 10, 38, 48, 22],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7,
          display: false
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 60,
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

var ctx4 = document.getElementById("myAreaChart4");
var myLineChart = new Chart(ctx4, {
  type: 'line',
  data: {
    labels: ["Mar 1", "Mar 2", "Mar 3", "Mar 4", "Mar 5", "Mar 6", "Mar 7"],
    datasets: [{
      label: "Sessions",
      lineTension: 0,
      backgroundColor: "rgba(52, 98, 220, 0.5)",
      borderColor: "#3462DC",
      pointRadius: 2,
      pointBackgroundColor: "rgba(255,255,255,0.8)",
      pointBorderColor: "rgba(52, 98, 220, 0.5)",
      pointHoverRadius: 0,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: [5, 12, 20, 18, 18, 2, 10],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7,
          display: false
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 40,
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
