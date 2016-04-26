using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv = (DataView)dailyCaloric.Select(DataSourceSelectArguments.Empty);
        DataRowView drv = dv[0];
        DataView dv1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        DataRowView drv1 = dv1[0];
        DataView dv2 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        DataRowView drv2 = dv2[0];

        CalorieDailyLabel.Text = drv["CalorieGoal"].ToString();
        ExerciseLabel.Text = drv1["ExerciseGoal"].ToString();
        WeightLabel.Text = drv2["GoalWeight"].ToString();
        WaterLabel.Text = drv["WaterGoal"].ToString();

        Application["CurrentWeight"] = drv2["CurrentWeight"];
        Application["GoalWeight"] = drv2["GoalWeight"];
        Application["ExerciseCurr"] = drv1["ExerciseCurr"];
        Application["ExerciseGoal"] = drv1["ExerciseGoal"];
        Application["ProteinGoal"] = drv["ProteinGoal"];
        Application["CalorieGoal"] = drv["CalorieGoal"];
        Application["CarbGoal"] = drv["CarbGoal"];
        Application["FatGoal"] = drv["FatGoal"];
        Application["CalorieCurr"] = drv["CalorieCurr"];
        Application["ProteinCurr"] = drv["ProteinCurr"];
        Application["CarbCurr"] = drv["CarbCurr"];
        Application["FatCurr"] = drv["FatCurr"];
        Application["WaterCurr"] = drv["WaterCurr"];
        Application["WaterGoal"] = drv["WaterGoal"];

    }
}