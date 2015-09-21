using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DeleteMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnButton1_Click(object sender, EventArgs e)
        {
            using (Database1Entities db = new Database1Entities())
            {
                var query = (from a in db.Movies select a).ToList();
                var result = query.Where(a => a.Title.Contains(title.Text));

                GridView1.DataSource = result;
                GridView1.DataBind();


            }

        }

        protected void OnDeleteClick(object sender, EventArgs e)
        {
            using (Database1Entities db = new Database1Entities())
            {
                var query = (from a in db.Movies select a).ToList();
                var result = query.Where(a => a.Id == Int32.Parse( movieID.Text)).FirstOrDefault();

                db.Movies.Remove(result);

                db.SaveChanges();

                message.Text = "Movie successfully deleted!";

            }
        }
    }
}