<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Log.aspx.cs" Inherits="Log" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturesContent" Runat="Server">

        <div id="features">
    <div class="5grid">
        <div class="3u-first">
            <!-- Feature #1 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Log Fitness</h1>
                <asp:Label ID="CurrentExerciseLabel" runat="server" Text="Enter Workout Time Completed:"></asp:Label>
                <br />
                <asp:TextBox ID="CurrentExerciseTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="GoalExerciseLabel" runat="server" Text="Enter Workout Time Goal:"></asp:Label>
                <br />
                <asp:TextBox ID="GoalExerciseTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="FitnessSubmitButton" runat="server" Text="Submit" onclick="FitnessSubmitButton_Click"/>


            </section>

        </div>
        <div class="3u">

            <!-- Feature #2 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Log Macros Goals</h1>
                <asp:Label ID="CalorieGoalLabel" runat="server" Text="Enter Calorie Goal:         "></asp:Label>
                <br />
                <asp:TextBox ID="CaloriesGoalTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="ProteinGoalLabel" runat="server" Text="Enter Protein Goal:       "></asp:Label>
                <br />
                <asp:TextBox ID="ProteinGoalTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="CarbGoalLabel" runat="server" Text="Enter Carbs Goal:         "></asp:Label>
                <br />
                <asp:TextBox ID="CarbGoalTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="FatGoalLabel" runat="server" Text="Enter Fats Goal:        "></asp:Label>
                <br />
                <asp:TextBox ID="FatGoalTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="MacrosSubmitButton" runat="server" Text="Submit" onclick="MacrosSubmitButton_Click"/>
            </section>

        </div>
        <div class="3u">

            <!-- Feature #3 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Log Water</h1>
                <asp:Label ID="WaterDrankLabel" runat="server" Text="Enter Water Drank:"></asp:Label>
                <br />
                <asp:TextBox ID="WaterDrankTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="WaterGoalLabel" runat="server" Text="Enter Water Goal:"></asp:Label>
                <br />
                <asp:TextBox ID="WaterGoalTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="WaterSubmitButton" runat="server" Text="Submit" OnClick="WaterSubmitButton_Click"/>
            </section>

        </div>
        <div class="3u">

            <!-- Feature #3 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Log Weight</h1>
                <asp:Label ID="WeightLabel" runat="server" Text="Enter Weight:"></asp:Label>
                <br />
                <asp:TextBox ID="WeightTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="WeightGoalLabel" runat="server" Text="Enter Goal Weight:"></asp:Label>
                <br />
                <asp:TextBox ID="WeightGoalTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="WeightSubmitButton" runat="server" Text="Submit" OnClick="WeightSubmitButton_Click"/>
            </section>

        </div>
    </div>
</div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="5grid">
        <div class="3u-first">
            <!-- Feature #1 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Log Food</h1>

                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                <br />
                <asp:TextBox ID="FoodNameTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Calories:"></asp:Label>
                <br />
                <asp:TextBox ID="FoodCaloriesTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Protein:"></asp:Label>
                <br />
                <asp:TextBox ID="FoodProteinTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Carb:"></asp:Label>
                <br />
                <asp:TextBox ID="FoodCarbTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Fat:"></asp:Label>
                <br />
                <asp:TextBox ID="FoodFatTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="FoodSubmitButton" runat="server" Text="Submit" onclick="FoodSubmitButton_Click"/>

            </section>
            <div class="3u">
            <!-- Feature #1 -->
            <section>
                <h1 style="font-size: 28pt; margin-bottom: 2%;">Reset All</h1>
                <asp:Button ID="ResetAllButton" runat="server" Text="Reset" onclick="ResetAllButton_Click"/>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select * from [Nutrition]" UpdateCommand="Update [Nutrition] set CalorieGoal=@calGoal, ProteinGoal=@proGoal, CarbGoal=@carbGoal, FatGoal=@fatGoal, CalorieCurr=@calCurr, ProteinCurr=@proCurr, CarbCurr=@carbCurr, FatCurr=@fatCurr, WaterGoal=@waterGoal, WaterCurr=@waterCurr">
                    <UpdateParameters>
                        <asp:Parameter DefaultValue="0" Name="calGoal" />
                        <asp:Parameter DefaultValue="0" Name="proGoal" />
                        <asp:Parameter DefaultValue="0" Name="carbGoal" />
                        <asp:Parameter DefaultValue="0" Name="fatGoal" />
                        <asp:Parameter DefaultValue="0" Name="calCurr" />
                        <asp:Parameter DefaultValue="0" Name="proCurr" />
                        <asp:Parameter DefaultValue="0" Name="carbCurr" />
                        <asp:Parameter DefaultValue="0" Name="fatCurr" />
                        <asp:Parameter DefaultValue="0" Name="waterGoal" />
                        <asp:Parameter DefaultValue="0" Name="waterCurr" />
                    </UpdateParameters>
                </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Fitness]" UpdateCommand="Update [Fitness] set ExerciseGoal=@exGoal,ExerciseCurr=@exCurr">
    <UpdateParameters>
        <asp:Parameter DefaultValue="0" Name="exGoal" />
        <asp:Parameter DefaultValue="0" Name="exCurr" />
    </UpdateParameters>
                </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Food" SelectCommand="SELECT * FROM [Food]"></asp:SqlDataSource>
            </section>

        </div>
    </div>
    

</asp:Content>

