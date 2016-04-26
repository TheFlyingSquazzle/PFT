<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FitnessPage.aspx.cs" Inherits="FitnessPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="FeaturesContent" Runat="Server">

    <div id="features">
            <div class="5grid">

                <div class="6u-first">

                    <!-- Feature #2 -->
                    <section>
                        <h1 style="font-size: 28pt; margin-bottom: 2%;">Current Exercise Amount</h1>
                        <h2>Your current amount of time exercising today is <strong style="color: lightblue;"><%= Application["ExerciseCurr"] %></strong> minutes!</h2>
                    </section>

                </div>

                <div class="6u">

                    <!-- Feature #2 -->
                    <section>
                        <h1 style="font-size: 28pt; margin-bottom: 2%;">Goal Exercise Amount</h1>
                        <h2>Your goal for today is <strong style="color: lightblue;"><%= Application["ExerciseGoal"] %></strong> minutes!</h2>
                    </section>

                </div>

            </div>
        </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <!-- Feature #2 -->
    <div class="chart">
        <script>
            var fitCurr = '<%= Application["ExerciseCurr"] %>';
            var fitGoal = '<%= Application["ExerciseGoal"] %>';

                    var data = [fitCurr, fitGoal];

                var x = d3.scale.linear()
                    .domain([0, d3.max(data)])
                .range([0, 1000]);

                d3.select(".chart")
                  .selectAll("div")
                    .data(data)
                  .enter().append("div")
                    .style("width", function(d) { return x(d) + "px"; })
                .text(function(d) { return d; });
        </script>
    </div>

</asp:Content>

