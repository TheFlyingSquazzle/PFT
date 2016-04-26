<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Nutrition.aspx.cs" Inherits="Nutrition" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturesContent" Runat="Server">

    <div id="features">
            <div class="5grid">

                <div class="3u-first">

                    <!-- Feature #2 -->
                    <section>
                        <h1 style="font-size: 28pt; margin-bottom: 2%;">Current Calorie Amount</h1>
                        <h2>
                            Your current calorie amount for today is
                            <strong style="color: lightblue;"> <%= Application["CalorieCurr"] %></strong> Calories!
                        </h2>
                    </section>

                </div>

                <div class="3u">

                    <!-- Feature #2 -->
                    <section>
                        <h1 style="font-size: 28pt; margin-bottom: 2%;">Goal Calorie Amount</h1>
                        <h2>
                            Your goal for today is
                            <strong style="color: lightblue;"> <%= Application["CalorieGoal"] %></strong> Calories!
                        </h2>
                    </section>

                </div>
                <div class="3u">

                    <!-- Feature #2 -->
                    <section>
                        <h1 style="font-size: 28pt; margin-bottom: 2%;">Current Macros</h1>
                        <h2>Your current macros are:</h2>
                        <ul>
                            <li class="MacroITem">
                                <h2>Protein:</h2>
                                <strong style="color: lightblue;"> <%= Application["ProteinCurr"] %></strong> grams!
                            </li>
                            <li class="MacroITem">
                                <h2>Carbs:</h2>
                                <strong style="color: lightblue;"> <%= Application["CarbCurr"] %></strong> grams!
                            </li>
                            <li class="MacroITem">
                                <h2>Fats:</h2>
                                <strong style="color: lightblue;"> <%= Application["FatCurr"] %></strong> grams!
                            </li>
                        </ul>
                    </section>

                </div>
                <div class="3u">

                    <!-- Feature #2 -->
                    <section>
                        <h1 style="font-size: 28pt; margin-bottom: 2%;">Goal Macros</h1>
                        <h2>Your goal macros are:</h2>
                        <ul>
                            <li class="MacroITem">
                                <h2>Protein:</h2>
                                <strong style="color: lightblue;"> <%= Application["ProteinGoal"] %></strong> grams!
                            </li>
                            <li class="MacroITem">
                                <h2>Carbs:</h2>
                                <strong style="color: lightblue;"> <%= Application["CarbGoal"] %></strong> grams!
                            </li>
                            <li class="MacroITem">
                                <h2>Fats:</h2>
                                <strong style="color: lightblue;"> <%= Application["FatGoal"] %></strong> grams!
                            </li>
                        </ul>
                    </section>

                </div>

            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <h3 class="3u">Calories In vs Out</h3>

        <div class="chart1 3u-first" >
            <script>
                    var data = [<%= Application["CalorieCurr"] %>, <%= Application["CalorieGoal"] %>];

                var x = d3.scale.linear()
                    .domain([0, d3.max(data)])
                .range([0, 800]);

                d3.select(".chart1")
                  .selectAll("div")
                    .data(data)
                  .enter().append("div")
                    .style("width", function(d) { return x(d) + "px"; })
                .text(function(d) { return d; });
            </script>
        </div>




        <div class="3u">
            <main>

                <script>

                    var width = 960,
                        height = 500,
                        radius = Math.min(width, height) / 2 - 10;

                    var data = [<%= Application["ProteinCurr"] %>, <%= Application["CarbCurr"] %>, <%= Application["FatCurr"] %>];

                    var color = d3.scale.category20();

                    var arc = d3.svg.arc()
                        .outerRadius(radius);

                    var pie = d3.layout.pie();

                    var svg = d3.select("main").append("svg")
                        .datum(data)
                        .attr("width", width)
                        .attr("height", height)
                      .append("g")
                        .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")")
                    .text(function (d) { return d.data; });;

                    var arcs = svg.selectAll("g.arc")
                        .data(pie)
                      .enter().append("g")
                        .attr("class", "arc")
                        .text(function (d) { return d.data; });


                    arcs.append("path")
                        .attr("fill", function (d, i) { return color(i); })
                      .transition()
                        .ease("bounce")
                        .duration(3000)
                        .attrTween("d", tweenPie)
                      .transition()
                        .ease("elastic")
                        .delay(function (d, i) { return 4000 + i * 50; })
                        .duration(2000)
                        .attrTween("d", tweenDonut)
                        .text(function (d) { return d.data; });

                    function tweenPie(b) {
                        b.innerRadius = 0;
                        var i = d3.interpolate({ startAngle: 0, endAngle: 0 }, b);
                        return function (t) { return arc(i(t)); };
                    }

                    function tweenDonut(b) {
                        b.innerRadius = radius * .6;
                        var i = d3.interpolate({ innerRadius: 0 }, b);
                        return function (t) { return arc(i(t)); };
                    }

                </script>

            </main>
        </div>
</asp:Content>

