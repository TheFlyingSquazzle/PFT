using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FitnessSubmitButton_Click(object sender, EventArgs e)
    {
        string _query = "Update [Fitness] set ExerciseGoal=@ExGoal, ExerciseCurr=@ExCurr where UserID='1'";
        using (SqlConnection conn = new SqlConnection(@"Data Source=pft.database.windows.net;Initial Catalog=PFTdb;Integrated Security=False;User ID=corbinrwatkins;Password=Cryleew91;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@ExGoal", GoalExerciseTextBox.Text);
                comm.Parameters.AddWithValue("@ExCurr", CurrentExerciseTextBox.Text);
                Application["ExerciseGoal"] = GoalExerciseTextBox.Text;
                Application["ExerciseCurr"] = CurrentExerciseTextBox.Text;
                conn.Open();
                comm.ExecuteNonQuery();
            }
        }
    }

    protected void MacrosSubmitButton_Click(object sender, EventArgs e)
    {
        string _query = "Update [Nutrition] set CalorieGoal=@CalGoal, ProteinGoal=@ProGoal, CarbGoal=@cGoal, FatGoal=@fGoal where UserID='1'";
        using (SqlConnection conn = new SqlConnection(@"Data Source=pft.database.windows.net;Initial Catalog=PFTdb;Integrated Security=False;User ID=corbinrwatkins;Password=Cryleew91;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@CalGoal", CaloriesGoalTextBox.Text);
                comm.Parameters.AddWithValue("@ProGoal", ProteinGoalTextBox.Text);
                comm.Parameters.AddWithValue("@CGoal", CarbGoalTextBox.Text);
                comm.Parameters.AddWithValue("@fGoal", FatGoalTextBox.Text);
                Application["CalorieGoal"] = CaloriesGoalTextBox.Text;
                Application["ProteinGoal"] = ProteinGoalTextBox.Text;
                Application["CarbGoal"] = CarbGoalTextBox.Text;
                Application["FatGoal"] = FatGoalTextBox.Text;
                conn.Open();
                comm.ExecuteNonQuery();
            }
        }
    }

    protected void WaterSubmitButton_Click(object sender, EventArgs e)
    {
        string _query = "Update [Nutrition] set WaterGoal=@wGoal, WaterCurr=@wCurr where UserID='1'";
        using (SqlConnection conn = new SqlConnection(@"Data Source=pft.database.windows.net;Initial Catalog=PFTdb;Integrated Security=False;User ID=corbinrwatkins;Password=Cryleew91;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@wGoal", WaterGoalTextBox.Text);
                comm.Parameters.AddWithValue("@wCurr", WaterDrankTextBox.Text);
                Application["WaterGoal"] = WaterGoalTextBox.Text;
                Application["WaterCurr"] = WaterDrankTextBox.Text;
                conn.Open();
                comm.ExecuteNonQuery();
            }
        }
    }

    protected void WeightSubmitButton_Click(object sender, EventArgs e)
    {
        string _query = "Update [User] set CurrentWeight=@weightCurr, GoalWeight=@weightGoal where UserID='1'";
        using (SqlConnection conn = new SqlConnection(@"Data Source=pft.database.windows.net;Initial Catalog=PFTdb;Integrated Security=False;User ID=corbinrwatkins;Password=Cryleew91;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@weightCurr", WeightTextBox.Text);
                comm.Parameters.AddWithValue("@weightGoal", WeightGoalTextBox.Text);
                Application["CurrentWeight"] = WeightTextBox.Text;
                Application["GoalWeight"] = WeightGoalTextBox.Text;
                conn.Open();
                comm.ExecuteNonQuery();
            }
        }
    }

    protected void FoodSubmitButton_Click(object sender, EventArgs e)
    {
        string _query = "Insert into [Food] (UserID,FoodName,Calories,Fats,Carbs,Protein) values ('1',@foodName,@cal,@fat,@carb,@protein)";
        string _query2 = "Update [Nutrition] set CalorieCurr=CalorieCurr + @cal, ProteinCurr=ProteinCurr + @protein, CarbCurr=CarbCurr + @carb, FatCurr=FatCurr + @fat where UserID='1'";
        using (SqlConnection conn = new SqlConnection(@"Data Source=pft.database.windows.net;Initial Catalog=PFTdb;Integrated Security=False;User ID=corbinrwatkins;Password=Cryleew91;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@foodName", FoodNameTextBox.Text);
                comm.Parameters.AddWithValue("@cal", FoodCaloriesTextBox.Text);
                comm.Parameters.AddWithValue("@fat", FoodFatTextBox.Text);
                comm.Parameters.AddWithValue("@carb", FoodCarbTextBox.Text);
                comm.Parameters.AddWithValue("@protein", FoodProteinTextBox.Text);
                conn.Open();
                comm.ExecuteNonQuery();
            }
            using (SqlCommand comm1 = new SqlCommand())
            {
                comm1.Connection = conn;
                comm1.CommandType = CommandType.Text;
                comm1.CommandText = _query2;
                comm1.Parameters.AddWithValue("@cal", FoodCaloriesTextBox.Text);
                comm1.Parameters.AddWithValue("@fat", FoodFatTextBox.Text);
                comm1.Parameters.AddWithValue("@carb", FoodCarbTextBox.Text);
                comm1.Parameters.AddWithValue("@protein", FoodProteinTextBox.Text);
                comm1.ExecuteNonQuery();
            }
        }
    }
}