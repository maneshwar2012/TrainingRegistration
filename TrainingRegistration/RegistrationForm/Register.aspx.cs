using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;

namespace RegistrationForm
{
    public partial class Register : System.Web.UI.Page
    {
        int maxId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["MyConsString"].ConnectionString;
        }

        //Insertion method for table qualifications
        public void ExecuteInsert2(int id,string course, string stream, string university, string durationofcourse,int passingyear, int marks)
        {
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            //string MyConsString = "SERVER=localhost;" +
            //               "DATABASE=registration;" +
            //                "UID=root;" +
            //                "PASSWORD=root;";
            string sql_qualification = "INSERT INTO qualifications (Id,Course,Stream, University,DurationofCourse,PassingYear,Marks) VALUES " + "(?Id,?Course,?Stream,?University,?DurationofCourse,?PassingYear,?Marks)";
            try
            {
                conn.Open();

                MySqlCommand cmd1 = new MySqlCommand(sql_qualification, conn);


                MySqlParameter[] param_qualification = new MySqlParameter[7];
                param_qualification[0] = new MySqlParameter("?Id", MySqlDbType.Int32);
                param_qualification[1] = new MySqlParameter("?Course", MySqlDbType.VarChar, 50);
                param_qualification[2] = new MySqlParameter("?Stream", MySqlDbType.VarChar, 50);
                param_qualification[3] = new MySqlParameter("?University", MySqlDbType.VarChar, 500);
                param_qualification[4] = new MySqlParameter("?DurationofCourse", MySqlDbType.VarChar, 50);
                param_qualification[5] = new MySqlParameter("?PassingYear", MySqlDbType.Int32);
                param_qualification[6] = new MySqlParameter("?Marks", MySqlDbType.Int32);


                param_qualification[0].Value = id;
                param_qualification[1].Value = course;
                param_qualification[2].Value = stream;
                param_qualification[3].Value = university;
                param_qualification[4].Value = durationofcourse;
                param_qualification[5].Value = passingyear;
                param_qualification[6].Value = marks;



                for (int i = 0; i < param_qualification.Length; i++)
                {
                    cmd1.Parameters.Add(param_qualification[i]);
                }

                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;

            }
            finally
            {
                conn.Close();
            }
        }

        //Insertion method for table professional experience
        public void ExecuteInsert1(int id,string organisation, DateTime fromdate, DateTime todate, string position, string job, string location)
        {
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            //string MyConsString = "SERVER=localhost;" +
            //               "DATABASE=registration;" +
            //                "UID=root;" +
            //                "PASSWORD=root;";
           
           string sql_professional = "INSERT INTO profession_exp (Id,Organisation, From_Date,To_Date,Position,Job,Location) VALUES " + "(Id,?Organisation,?From_Date,?To_Date,?Position,?Job,?Location)";
            try
            {
                conn.Open();

                MySqlCommand cmd1 = new MySqlCommand(sql_professional, conn);


                MySqlParameter[] param_professional = new MySqlParameter[7];
                param_professional[0] = new MySqlParameter("?Organisation", MySqlDbType.Int32);
                param_professional[1] = new MySqlParameter("?Organisation", MySqlDbType.VarChar, 200);
                param_professional[2] = new MySqlParameter("?From_Date", MySqlDbType.Date);
                param_professional[3] = new MySqlParameter("?To_Date", MySqlDbType.Date);
                param_professional[4] = new MySqlParameter("?Position", MySqlDbType.VarChar, 100);
                param_professional[5] = new MySqlParameter("?Job", MySqlDbType.VarChar, 200);
                param_professional[6] = new MySqlParameter("?Location", MySqlDbType.VarChar, 200);

                param_professional[0].Value = id;
                param_professional[1].Value = organisation;
                param_professional[2].Value = fromdate;
                param_professional[3].Value = todate;
                param_professional[4].Value = position;
                param_professional[5].Value = job;
                param_professional[6].Value = location;

                for (int i = 0; i < param_professional.Length; i++)
                {
                    cmd1.Parameters.Add(param_professional[i]);
                }

                cmd1.CommandType = System.Data.CommandType.Text;
                cmd1.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;

            }
            finally
            {
                conn.Close();
            }
        }

        //Insertion method for table basic details
        public void ExecuteInsert(string name, string guardianname, DateTime dob, string gender, string address, string email, int number, string location, string nationality, string mothertongue,string resume,string traininglocation,string register,DateTime periodfrom,DateTime periodto)
        {
           
            MySqlConnection conn = new MySqlConnection(GetConnectionString());
            //string MyConsString = "SERVER=localhost;" +
            //               "DATABASE=registration;" +
            //                "UID=root;" +
            //                "PASSWORD=root;";
           
            MySqlCommand command = conn.CreateCommand();
            
            string sql_details = "INSERT INTO basic_details (Name, GuardianName,DOB,Gender,Address,EmailId,MobileNumber,Location,Nationality,MotherTongue,resume,TrainingLocation,Register,PeriodFrom,PeriodTo) VALUES " + "(?Name,?GuardianName,?DOB,?Gender,?Address,?EmailId,?MobileNumber,?Location,?Nationality,?MotherTongue,?resume,?TrainingLocation,?Register,?PeriodFrom,?PeriodTo)";
            string sql_id = "Select max(Id) from basic_details";
            try
            {
                conn.Open();
                MySqlCommand cmd_details = new MySqlCommand(sql_details, conn);
                MySqlCommand cmd_id = new MySqlCommand(sql_id, conn);
                MySqlParameter[] param_details = new MySqlParameter[15];


                param_details[0] = new MySqlParameter("?Name", MySqlDbType.VarChar, 100);
                param_details[1] = new MySqlParameter("?GuardianName", MySqlDbType.VarChar, 100);
                param_details[2] = new MySqlParameter("?DOB", MySqlDbType.Date);
                param_details[3] = new MySqlParameter("?Gender", MySqlDbType.VarChar, 20);
                param_details[4] = new MySqlParameter("?Address", MySqlDbType.VarChar, 500);
                param_details[5] = new MySqlParameter("?EmailId", MySqlDbType.VarChar, 100);
                param_details[6] = new MySqlParameter("?MobileNumber", MySqlDbType.Int32);
                param_details[7] = new MySqlParameter("?Location", MySqlDbType.VarChar, 100);
                param_details[8] = new MySqlParameter("?Nationality", MySqlDbType.VarChar, 100);
                param_details[9] = new MySqlParameter("?MotherTongue", MySqlDbType.VarChar, 200);
                param_details[10] = new MySqlParameter("?resume", MySqlDbType.VarChar, 500);
                param_details[11] = new MySqlParameter("?TrainingLocation", MySqlDbType.VarChar, 100);
                param_details[12] = new MySqlParameter("?Register", MySqlDbType.VarChar, 100);
                param_details[13] = new MySqlParameter("?PeriodFrom", MySqlDbType.Date);
                param_details[14] = new MySqlParameter("?PeriodTo", MySqlDbType.Date);

                param_details[0].Value = name;
                param_details[1].Value = guardianname;
                param_details[2].Value = dob;
                param_details[3].Value = gender;
                param_details[4].Value = address;
                param_details[5].Value = email;
                param_details[6].Value = number;
                param_details[7].Value = location;
                param_details[8].Value = nationality;
                param_details[9].Value = mothertongue;
                param_details[10].Value = resume;
                param_details[11].Value = traininglocation;
                param_details[12].Value = register;
                param_details[13].Value = periodfrom;
                param_details[14].Value = periodto;

                for (int i = 0; i < param_details.Length; i++)
                {
                    cmd_details.Parameters.Add(param_details[i]);
                }

                cmd_details.CommandType = System.Data.CommandType.Text;
                cmd_details.ExecuteNonQuery();

                maxId = Convert.ToInt32(cmd_id.ExecuteScalar());
              
                
                
            }
            catch (Exception ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;

            }
            finally
            {
                conn.Close();
            }
        }
       protected void Button1_Click(object sender, EventArgs e)
              {
              Boolean sta = false;
              String filepath = FileUpload1.PostedFile.FileName;
              String filename = System.IO.Path.GetFileName(filepath);
              String fileext = System.IO.Path.GetExtension(filename);
              Double filesize = FileUpload1.PostedFile.ContentLength;
              Double filesizekb = filesize / 1024;
             
              filesizekb = Math.Round(filesizekb, 1);


              switch (fileext)
              {
                  case ".doc":
                      sta = true;
                      break;
                  case ".pdf":
                      sta = true;
                      break;
                 
                  default:
                      sta = false;
                      break;
              }

              if (sta == true)
              {
                  if (filesizekb > 2000)
                  {
                      Label1.Text = "File Size must be upto 2000kb";
                  }
                  else
                  {
                      FileUpload1.PostedFile.SaveAs(Server.MapPath("Upload/" + filename));
                    
                  }
              }
              else
              {
                  Label1.Text = "Invalid File Format";
              }

              DateTime date = new DateTime();
              DateTime date1 = new DateTime();
           DateTime date2 = new DateTime();
             if (
                        DateTime.TryParse(inputField.Value, out date)&&
                        DateTime.TryParse(inputField1.Value,out date1)&&
                 DateTime.TryParse(inputField2.Value, out date2)
                 )
                
                  {
                      //call the method to execute insert to the database
                       ExecuteInsert(
                           name.Text,
                                    guardianname.Text,
                                    date,
                                    RadioButtonList1.SelectedItem.Text,
                                    address.Text,
                                   email.Text,
                                   Convert.ToInt32(mobileno.Text),
                                   currentlocation.Text,
                                   nationality.Text,
                                   language.Text,                                   
                                   FileUpload1.FileName.ToString(),
                                   location.SelectedItem.Text,
                                   RadioButtonList2.SelectedItem.Text,
                                   date1,date2);
                     

                  }
             if (Label5.Text == "B.Tech")
             {
                 if (btechstream.Text != string.Empty)
                 {
                     ExecuteInsert2(maxId,Label5.Text,
                         btechstream.Text,
                         btechinstitute.Text,
                         btechcourse.Text,
                        Convert.ToInt32(btechyear.Text),
                       Convert.ToInt32(btechmarks.Text));
                 }
             }
             if (Label2.Text == "Diploma")
             {
                 if (diplomastream.Text != string.Empty)
                 {
                     ExecuteInsert2(maxId,Label2.Text,
                         diplomastream.Text,
                         diplomainstitute.Text,
                         diplomacourse.Text,
                        Convert.ToInt32(diplomayear.Text),
                       Convert.ToInt32(diplomamarks.Text));
                 }
             }
             if (Label3.Text == "Highschool")
             {
                 if (highschoolstream.Text != string.Empty)
                 {
                     ExecuteInsert2(maxId,Label3.Text,
                         highschoolstream.Text,
                         highschoolinstitute.Text,
                         highschoolcourse.Text,
                        Convert.ToInt32(highschoolyear.Text),
                       Convert.ToInt32(highschoolmarks.Text));
                 }
             }
             if (Label4.Text == "SSC or Equivalent")
             {
                 if (sscstream.Text != string.Empty)
                 {
                     ExecuteInsert2(maxId, Label4.Text, sscstream.Text,
                         sscinstitute.Text,
                         ssccourse.Text,
                        Convert.ToInt32(sscyear.Text),
                       Convert.ToInt32(sscmarks.Text));
                 }
             }

             if (TextBox9.Text != string.Empty)
             {

                 ExecuteInsert1(maxId,TextBox9.Text,
                     Convert.ToDateTime(TextBox10.Text),
                   Convert.ToDateTime(TextBox15.Text),
                   TextBox11.Text,
                   TextBox12.Text,
                   TextBox13.Text);
             }
             if (TextBox14.Text != string.Empty)
             {
                 ExecuteInsert1(maxId,TextBox14.Text,
                     Convert.ToDateTime(TextBox20.Text),
                   Convert.ToDateTime(TextBox24.Text),
                   TextBox16.Text,
                   TextBox17.Text,
                   TextBox18.Text);
             }
             if (TextBox19.Text != string.Empty)
             {
                 ExecuteInsert1(maxId,TextBox19.Text,
                     Convert.ToDateTime(TextBox25.Text),
                   Convert.ToDateTime(TextBox26.Text),
                   TextBox21.Text,
                   TextBox22.Text,
                   TextBox23.Text);
             }
            
             Response.Write("Record was successfully added!");
             ClearControls(Page);
              }
             
              
            
                     
          public static void ClearControls(Control Parent)
          {


             if (Parent is TextBox)
              { (Parent as TextBox).Text = string.Empty; }
              else

            {

                 foreach (Control c in Parent.Controls)

                     ClearControls(c);

              }

          }
}
}


       
                      
