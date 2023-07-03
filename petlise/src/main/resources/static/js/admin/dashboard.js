'use strict';

function $(selector) {
  return document.querySelector(selector);
}

// Global defaults
Chart.defaults.global.animation.duration = 2000; // Animation duration
Chart.defaults.global.title.display = false; // Remove title
Chart.defaults.global.defaultFontColor = '#71748c'; // Font color
Chart.defaults.global.defaultFontSize = 13; // Font size for every label

// Tooltip global resets
Chart.defaults.global.tooltips.backgroundColor = '#111827';
Chart.defaults.global.tooltips.borderColor = 'blue';

// Gridlines global resets
Chart.defaults.scale.gridLines.zeroLineColor = '#3b3d56';
Chart.defaults.scale.gridLines.color = '#3b3d56';
Chart.defaults.scale.gridLines.drawBorder = false;

// Legend global resets
Chart.defaults.global.legend.labels.padding = 0;
Chart.defaults.global.legend.display = false;

// Ticks global resets
Chart.defaults.scale.ticks.fontSize = 12;
Chart.defaults.scale.ticks.fontColor = '#71748c';
Chart.defaults.scale.ticks.beginAtZero = false;
Chart.defaults.scale.ticks.padding = 30;

// Elements globals
Chart.defaults.global.elements.point.radius = 0;

// Responsivess
Chart.defaults.global.responsive = true;
Chart.defaults.global.maintainAspectRatio = false;

// The line chart
var chart = new Chart(document.getElementById('myChart'), {
  type: 'line',
  data: {
    labels: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ],
    datasets: [
      {
        label: '신규 회원가입 수',
        data: [4, 20, 5, 20, 5, 25, 9],
        backgroundColor: 'transparent',
        borderColor: '#ffb100',
        lineTension: 0,
        borderWidth: 3
      }
    ]
  },
  options: {
    interaction: {
      intersect: false,
      mode: 'index'
    },
    scales: {
      xAxes: [
        {
          gridLines: {
            display: false
          }
        }
      ],
      yAxes: [
        {
          gridLines: {
            color: '#E0E0E0',
            drawBorder: false
          },
          ticks: {
            stepSize: 10
          }
        }
      ]
    }
  }
});
