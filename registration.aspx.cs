using System;
using System.Web;

namespace MyIPTproj
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Submitted"] != null && (bool)Session["Submitted"])
            {
                lblMessage.CssClass = "text-warning fw-bold";
                lblMessage.Text = "⚠️ You have already submitted the form.";
                btnSubmit.Enabled = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["Submitted"] != null && (bool)Session["Submitted"])
            {
                lblMessage.CssClass = "text-warning fw-bold";
                lblMessage.Text = "⚠️ You have already submitted the form.";
                return;
            }

            lblMessage.CssClass = "text-success fw-bold";
            lblMessage.Text = "✅ Your form has been submitted successfully!";
            Session["Submitted"] = true;
            btnSubmit.Enabled = false;
        }
    }
}
