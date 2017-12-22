using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using Restaurant_App.Data_Layer;

namespace Henaben_Parekh_lab1
{
    public partial class mainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void onSubmit(object sender, EventArgs e)
        {
            int rb = 0;
            int chkboxValue1 = 0;
            int chkboxValue2 = 0;
            int chkboxValue3 = 0;
            int chkboxValue4 = 0;
            int chkboxValue5 = 0;
            int chkboxValue6 = 0;
            int chkboxValue7 = 0;
            try
            {

                if (RadioButtonList1.SelectedIndex == 0)
                {
                    rb = 0;
                }
                if (RadioButtonList1.SelectedIndex == 1)
                {
                    rb = 1;
                }
                string provinceValue = "";
                if (DropDownList1.TabIndex == 0)
                {
                    provinceValue = "Ontario";
                }
                if (DropDownList1.TabIndex == 1)
                {
                    provinceValue = "Alberta";
                }
                if (DropDownList1.TabIndex == 2)
                {
                    provinceValue = "Nova Scotia";
                }
                if (CheckBox1.Checked)
                {
                    chkboxValue1 = 1;
                }
                if (CheckBox2.Checked)
                {
                    chkboxValue2 = 1;
                }
                if (CheckBox3.Checked)
                {
                    chkboxValue3 = 1;
                }
                if (CheckBox4.Checked)
                {
                    chkboxValue4 = 1;
                }
                if (CheckBox5.Checked)
                {
                    chkboxValue5 = 1;
                }
                if (CheckBox6.Checked)
                {
                    chkboxValue6 = 1;
                }
                if (CheckBox7.Checked)
                {
                    chkboxValue7 = 1;
                }
                String connectionString = @"DATA source=35.225.156.50; Database=restdb;User ID=hena; Password='hena23parekh'";
                string Query = "insert into customer_info(customer_fname, customer_lname, customer_city, customer_postal, customer_phone, customer_province, customer_burger, customer_pizza, customer_begal, customer_coffee, customer_poutine, customer_fries, customer_drinks, customer_delivery, customer_comments) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + provinceValue + "','" + chkboxValue1 + "','" + chkboxValue2 + "','" + chkboxValue3 + "','" + chkboxValue4 + "','" + chkboxValue5 + "','" + chkboxValue6 + "','" + chkboxValue7 + "','" + rb + "','" + TextBox6.Text + "');";
                MySqlConnection connection = new MySqlConnection(connectionString);
                MySqlCommand cmd = new MySqlCommand(Query, connection);
                MySqlDataReader myreader;
                connection.Open();
                myreader = cmd.ExecuteReader();     // Here our query will be executed and data saved into the database.  
                while (myreader.Read())
                {
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Label10.Text = ex.Message;
            }
        }
        public void onClickRemember(object sender, EventArgs e)
        {
            try
            {
                String connectionString = @"DATA source=35.225.156.50; Database=restdb;User ID=hena; Password='hena23parekh'";
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    MySqlCommand command = new MySqlCommand("SELECT * FROM customer_info where customer_fname='" + TextBox1.Text + "' and customer_lname='" + TextBox2.Text + "'", connection);
                    MySqlDataReader dr = command.ExecuteReader();

                    if (dr == null || !dr.HasRows)
                    {
                        Label11.Text = "user not found";
                    }
                    else
                    {
                        Label11.Text = "We do know you";
                        while (dr.Read())
                        {


                            TextBox3.Text = dr["customer_city"].ToString();
                            TextBox4.Text = dr["customer_postal"].ToString();
                            TextBox5.Text = dr["customer_phone"].ToString();
                            String provinceStr = dr["customer_province"].ToString();
                            //Dropdown list selection for province
                            if (provinceStr == "Ontario")
                            {
                                DropDownList1.SelectedIndex = 0;
                            }
                            if (provinceStr == "Alberta")
                            {
                                DropDownList1.SelectedIndex = 1;

                            }
                            if (provinceStr == "Nova Scotia")
                            {
                                DropDownList1.SelectedIndex = 2;

                            }
                            //radio button value display
                            int radioBtnValue = Convert.ToInt32(dr["customer_delivery"].ToString());
                            if (radioBtnValue == 0)
                            {
                                RadioButtonList1.SelectedIndex = 0;
                            }
                            if (radioBtnValue == 1)
                            {
                                RadioButtonList1.SelectedIndex = 1;
                            }
                            //comment box value display
                            TextBox6.Text = dr["customer_comments"].ToString();
                            Label10.Text = "";
                            //checkbox value display
                            if (Convert.ToInt32(dr["customer_burger"].ToString()) == 1)
                            {
                                CheckBox1.Checked = true;
                            }
                            if (Convert.ToInt32(dr["customer_pizza"].ToString()) == 1)
                            {
                                CheckBox2.Checked = true;
                            }
                            if (Convert.ToInt32(dr["customer_begal"].ToString()) == 1)
                            {
                                CheckBox3.Checked = true;
                            }
                            if (Convert.ToInt32(dr["customer_coffee"].ToString()) == 1)
                            {
                                CheckBox4.Checked = true;
                            }
                            if (Convert.ToInt32(dr["customer_poutine"].ToString()) == 1)
                            {
                                CheckBox5.Checked = true;
                            }
                            if (Convert.ToInt32(dr["customer_fries"].ToString()) == 1)
                            {
                                CheckBox6.Checked = true;
                            }
                            if (Convert.ToInt32(dr["customer_drinks"].ToString()) == 7)
                            {
                                CheckBox6.Checked = true;
                            }
                        }
                    }
                    connection.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("An error occured: " + ex.Message);
            }
        }
        protected HtmlInputFile fillMyFile;
        private ImageUploader _imageUploader;
        protected void Button2_Click(object sender, EventArgs e)
        {
            _imageUploader = new ImageUploader("restaurant23");

            string fileName;

            try
            {
                if (FileUpload1.HasFile)
                {
                    fileName = FileUpload1.FileName;

                    HttpPostedFile image = FileUpload1.PostedFile;

                    _imageUploader.UploadImage(image, fileName);

                    upload.Text = "File Uploaded Successfully";
                }
            }
            catch (Exception ex)
            {
                upload.Text = "File Upload Error";
                //ExceptionLogging.SendExcepToDB(ex);
            }
        }
    }

}
