module Chart2Helper

  def chart2_bar id=nil, size=nil
    html = "<canvas id=\"myChart_bar\" width=\"400\" height=\"400\"></canvas>".html_safe
    script = javascript_tag do
      <<-END.html_safe
      var ctx = document.getElementById("myChart_bar");

      var data = {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [
        {
            label: "My First dataset",
            backgroundColor: "rgba(255,99,132,0.2)",
            borderColor: "rgba(255,99,132,1)",
            borderWidth: 1,
            hoverBackgroundColor: "rgba(255,99,132,0.4)",
            hoverBorderColor: "rgba(255,99,132,1)",
            data: [65, 59, 80, 81, 56, 55, 40],
        }
    ]
};

var options = {};

var myBarChart = new Chart(ctx, {
    type: 'bar',
    data: data,
    options: options
});

      END
    end
    return html + script
  end

  def chart2_line id=nil, size=nil
    html = "<canvas id=\"myChart_line\" width=\"400\" height=\"400\"></canvas>".html_safe
    script = javascript_tag do
      <<-END.html_safe
      var ctx = document.getElementById("myChart_line");

      var data = {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [
        {
            label: "My First dataset",
            fill: false,
            lineTension: 0.1,
            backgroundColor: "rgba(75,192,192,0.4)",
            borderColor: "rgba(75,192,192,1)",
            borderCapStyle: 'butt',
            borderDash: [],
            borderDashOffset: 0.0,
            borderJoinStyle: 'miter',
            pointBorderColor: "rgba(75,192,192,1)",
            pointBackgroundColor: "#fff",
            pointBorderWidth: 1,
            pointHoverRadius: 5,
            pointHoverBackgroundColor: "rgba(75,192,192,1)",
            pointHoverBorderColor: "rgba(220,220,220,1)",
            pointHoverBorderWidth: 2,
            pointRadius: 1,
            pointHitRadius: 10,
            data: [65, 59, 80, 81, 56, 55, 40],
        }
    ]
};

var options = {};

var myLineChart = new Chart(ctx, {
    type: 'line',
    data: data,
    options: options
});
      END
    end
    return html + script
  end

  def chart2_radar id=nil, size=nil, data=nil, options=nil
    html = "<div style=\"width: 100%; height: 100%;\"><canvas id=\"myChart_radar_#{id}\" width=\"#{size[:width]}\" height=\"#{size[:height]}\"></canvas></div>".html_safe
    script = javascript_tag do
      <<-END.html_safe

      var ctx = document.getElementById("myChart_radar_#{id}");

      var data = #{raw data};

      var options = #{options};

      var myRadarChart = new Chart(ctx, {
          type: 'radar',
          data: data,
          options: options
      });

      END
    end
    return html + script
  end

  def chart2_pie id=nil, size=nil
    html = "<div style=\"width: #{size[:width]}px; height: #{size[:height]}px;\"><canvas id=\"myChart_pie_#{id}\" width=\"#{size[:width]}\" height=\"#{size[:height]}\"></canvas></div>".html_safe
    script = javascript_tag do
      <<-END.html_safe
      var ctx = document.getElementById("myChart_pie_#{id}");

      var options = {};

      var data = {
    labels: [
        "Red",
        "Green",
        "Yellow"
    ],
    datasets: [
        {
            data: [300, 50, 100],
            backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
            hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ]
        }]
};


var options = {};

var myPieChart = new Chart(ctx, {
    type: 'pie',
    data: data,
    options: options
});

      END
    end
    return html + script
  end

  def chart2_donut
    html = "<canvas id=\"myChart_donut\" width=\"400\" height=\"400\"></canvas>".html_safe
    script = javascript_tag do
      <<-END.html_safe
      var ctx = document.getElementById("myChart_donut");

      var options = {};

      var data = {
    labels: [
        "Red",
        "Green",
        "Yellow"
    ],
    datasets: [
        {
            data: [300, 50, 100],
            backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
            hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ]
        }]
};


var options = {};

var myDonutChart = new Chart(ctx, {
  type: 'doughnut',
    data: data,
    options: options
});
      END
    end
    return html + script
  end

  def chart2_polar_area
    html = "<canvas id=\"myChart_polarArea\" width=\"400\" height=\"400\"></canvas>".html_safe
    script = javascript_tag do
      <<-END.html_safe

      var ctx = document.getElementById("myChart_polarArea");

      var options = {};

      var data = {
    labels: [
        "Red",
        "Green",
        "Yellow"
    ],
    datasets: [
        {
            data: [300, 50, 100],
            backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
            hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ]
        }]
};


var options = {};

var myPolarAreaChart = new Chart(ctx, {
  type: 'polarArea',
    data: data,
    options: options
});
      END
    end
    return html + script
  end





  # def chart2_scatter
  #   html = "".html_safe
  #   script = javascript_tag do
  #     <<-END.html_safe
  #     END
  #   end
  #   return html + script
  # end

end
