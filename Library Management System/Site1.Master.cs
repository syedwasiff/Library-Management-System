using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["role"] == "")
                {
                    LinkButton3.Visible = true;  // User Login button
                    LinkButton7.Visible = true;  // admin login button
                    LinkButton4.Visible = true;  // Sign Up Button 
                    LinkButton5.Visible = false;  // logout Button 
                    LinkButton6.Visible = false;  // hello user Button 

                    LinkButton8.Visible = false;  // Author Button 
                    LinkButton9.Visible = false;  // Publisher Button 
                    LinkButton10.Visible = false;  // Book Inventory Button 
                    LinkButton11.Visible = false;  // Book Issuing Button 
                    LinkButton12.Visible = false;  // Member Management Button 
                    
                }
                else if(Session["role"] == "user")
                {
                    LinkButton3.Visible = false;  // User Login button
                    LinkButton4.Visible = false;  // Sign Up Button 
                    LinkButton5.Visible = true;  // logout Button 
                    LinkButton6.Visible = true;  // hello user Button 
                    LinkButton6.Text = "Hello, "+ Session["username"].ToString();

                    LinkButton7.Visible = true;  // admin login button
                    LinkButton8.Visible = false;  // Author Button 
                    LinkButton9.Visible = false;  // Publisher Button 
                    LinkButton10.Visible = false;  // Book Inventory Button 
                    LinkButton11.Visible = false;  // Book Issuing Button 
                    LinkButton12.Visible = false;  // Member Management Button 
                }
                else if(Session["role"] == "admin")
                {
                    LinkButton3.Visible = false;  // User Login button
                    LinkButton4.Visible = false;  // Sign Up Button 
                    LinkButton5.Visible = true;  // logout Button 
                    LinkButton6.Visible = true;  // hello user Button 
                    LinkButton6.Text = "Hello, " + Session["username"].ToString();

                    LinkButton7.Visible = false;  // admin login button
                    LinkButton8.Visible = true;  // Author Button 
                    LinkButton9.Visible = true;  // Publisher Button 
                    LinkButton10.Visible = true;  // Book Inventory Button 
                    LinkButton11.Visible = true;  // Book Issuing Button 
                    LinkButton12.Visible = true;  // Member Management Button 
                }
            }
            catch(Exception ex)
            {

                
            }

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton3.Visible = true;  // User Login button
            LinkButton7.Visible = true;  // admin login button
            LinkButton4.Visible = true;  // Sign Up Button 
            LinkButton5.Visible = false;  // logout Button 
            LinkButton6.Visible = false;  // hello user Button 

            LinkButton8.Visible = false;  // Author Button 
            LinkButton9.Visible = false;  // Publisher Button 
            LinkButton10.Visible = false;  // Book Inventory Button 
            LinkButton11.Visible = false;  // Book Issuing Button 
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}