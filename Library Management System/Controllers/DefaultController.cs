using Library_Management_System.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Library_Management_System.Controllers
{
    public class DefaultController : ApiController
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        // GET: api/Default
        public List<book> Get()
        {
            SqlConnection con = new SqlConnection(strcon);
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("GetBookDataAPI", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            con.Close();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<book> books = new List<book>();
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                book book = new book();
                book.book_id = dt.Rows[i]["book_id"].ToString();
                book.book_name = dt.Rows[i]["book_name"].ToString();
                book.genre = dt.Rows[i]["genre"].ToString();
                book.author_name = dt.Rows[i]["author_name"].ToString();
                book.publisher_name = dt.Rows[i]["publisher_name"].ToString();
                book.publish_date = dt.Rows[i]["publish_date"].ToString();
                book.book_cost = dt.Rows[i]["book_cost"].ToString();
                book.book_description = dt.Rows[i]["book_description"].ToString();
                book.current_stock = dt.Rows[i]["current_stock"].ToString();
                books.Add(book);
            }
            return books;
        }

        // GET: api/Default/5
        public string Get(int id)
        {
            return "value";
        }        
    }
}
