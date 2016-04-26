using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FitnessPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string FitnessCurr = Application["ExerciseCurr"].ToString();
        string FitnessGoal = Application["ExerciseGoal"].ToString();

    }
}