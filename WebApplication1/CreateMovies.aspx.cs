using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Movies : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void OnButton_Click(object sender, EventArgs e)
        {
            using (Database1Entities db = new Database1Entities())
            {
                Movie movie = new Movie();

                movie.Title = title.Text;
                movie.Format = format.SelectedValue;
                movie.Length = Int32.Parse(length.Text);
                movie.Release_Year = Int32.Parse(releaseYear.Text);
                movie.Rating = Int32.Parse(rating.SelectedValue);

                db.Movies.Add(movie);
                db.SaveChanges();

                message.Text="Movie successfully created!";
            }
        }
    }
}