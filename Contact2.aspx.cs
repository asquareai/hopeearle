using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Globalization;
using System.Data;

public partial class Contact2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }

    }
   // [System.Web.Services.WebMethod]
    //public static string ContactQuery(string FirstName, string LastName, string Email, string Comment, string PhoneNumber, string Company, string Position, string Subscriber)
    //{
    //    try
    //    {

    //        string zoneId = "E. Australia Standard Time";
    //        TimeZoneInfo zone = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
    //        DateTime australianNow = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, zone);
    //        string Date = australianNow.ToString("dd MMM yyyy HH:mm");
    //        //CommonMail Com = new CommonMail();


    //        string textBody = "<html><head><style> table{border-collapse:collapse;}td{padding-left:10px;border:solid 1px #aaaaaa;background-color:#eeeeee;font-family:Calibri;font-size:10pt;}</style></head><body><table border='1px' cellspacing='0' style='border-collapse: collapse; border-width: 1px;  font-size: 15px;  margin: 1em auto; padding: 0; -webkit-border-radius: 6px;  -moz-border-radius: 6px;   border-radius: 6px;overflow: hidden;border: 1px thin;border-collapse: separate;border-spacing: 0;width: 600px;'><tr><td ><b>First Name</b></td><td style='width: 414px;background-color:#fff'>" + FirstName + "</td></tr><tr><td ><b>Last Name</b> </td> <td style='width: 414px;background-color:#fff'>  " + LastName + " </td></tr><tr><td ><b>Company</b></td><td style='width: 414px;background-color:#fff'> " + Company + " </td></tr><tr><td ><b>Position</b></td><td style='width: 414px;background-color:#fff'>" + Position + " </td></tr><tr><td ><b>Phone Number </b> </td><td style='width: 414px;background-color:#fff'>  " + PhoneNumber + "</td></tr><tr><td > <b>Email</b></td><td style='width: 414px;background-color:#fff'>" + Email + "</td></tr><tr><td ><b>Message</b> </td><td style='width: 414px;background-color:#fff'>" + Comment + "  </td></tr><tr><td ><b>News Letter Subscription</b> </td><td style='width: 414px;background-color:#fff'>" + Subscriber + "  </td></tr><tr><td ><b>Date & Time</b> </td><td style='width: 414px;background-color:#fff'>" + Date + "  </td></tr>";

    //        textBody += "</table></body></html>";

    //        sendmail("jairaj.j2s@gmail.com", "Site contact form", textBody);

    //        //textBodys = textBody;
    //        return "Mail sent";

    //    }
    //    catch (Exception ex)
    //    {
    //        return "Mail not sent " + ex.ToString();
    //    }
    //}

    public static string sendmail(string strTo, string strSubject, string strBody)
    {
        try
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["MailHost"].ToString();
            smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["MailPort"]);
            
            if (ConfigurationManager.AppSettings["MailHost"].ToString() == "true")
            {
                smtp.EnableSsl = true;
            }
            else
            {
                smtp.EnableSsl = false;
            }
            
            if (ConfigurationManager.AppSettings["LoginRequired"].ToString() == "true")
            {
                NetworkCredential cr = new NetworkCredential(ConfigurationManager.AppSettings["FromMailAddress"].ToString(), ConfigurationManager.AppSettings["MailPassword"].ToString());
                smtp.Credentials = cr;
            }
            
            System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();
            mailMessage.IsBodyHtml = true;
            mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["FromMailAddress"].ToString());
            mailMessage.To.Add(new MailAddress(strTo));
            mailMessage.Subject = strSubject;
            mailMessage.Body = strBody;
            smtp.Send(mailMessage);
            return "OK";
        }
        catch (Exception exp)
        {
            return exp.Message.ToString();
        }

    }
    protected void ContactSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string zoneId = "E. Australia Standard Time";
            TimeZoneInfo zone = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
            DateTime australianNow = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, zone);
            string Date = australianNow.ToString("dd MMM yyyy HH:mm");
            string Subscriber;
            if (checkedval.Checked)
            {
                Subscriber = "Yes";
            }
            else
            {
                Subscriber = "No";
            }
            string textBody = "<html><head><style> table{border-collapse:collapse;}td{padding-left:10px;border:solid 1px #aaaaaa;background-color:#eeeeee;font-family:Calibri;font-size:10pt;}</style></head><body><table border='1px' cellspacing='0' style='border-collapse: collapse; border-width: 1px;  font-size: 15px;  margin: 1em auto; padding: 0; -webkit-border-radius: 6px;  -moz-border-radius: 6px;   border-radius: 6px;overflow: hidden;border: 1px thin;border-collapse: separate;border-spacing: 0;width: 600px;'><tr><td ><b>First Name</b></td><td style='width: 414px;background-color:#fff'>" + Firstname.Text + "</td></tr><tr><td ><b>Last Name</b> </td> <td style='width: 414px;background-color:#fff'>  " + Lastname.Text + " </td></tr><tr><td ><b>Company</b></td><td style='width: 414px;background-color:#fff'> " + companyname.Text + " </td></tr><tr><td ><b>Position</b></td><td style='width: 414px;background-color:#fff'>" + position.Text + " </td></tr><tr><td ><b>Phone Number </b> </td><td style='width: 414px;background-color:#fff'>  " + Phone.Text + "</td></tr><tr><td > <b>Email</b></td><td style='width: 414px;background-color:#fff'>" + Email.Text + "</td></tr><tr><td ><b>Message</b> </td><td style='width: 414px;background-color:#fff'>" + comment.InnerText + "  </td></tr><tr><td ><b>News Letter Subscription</b> </td><td style='width: 414px;background-color:#fff'>" + Subscriber + "  </td></tr><tr><td ><b>Date & Time</b> </td><td style='width: 414px;background-color:#fff'>" + Date + "  </td></tr>";
            textBody += "</table></body></html>";
			var strMessage2 ="<span style='font-family:Calibri;font-size:12pt;'>Thank you for contacting Hope Earle Business & Property Lawyers.  <br>We will respond to your query promptly, however if your query is urgent, please don’t hesitate to call us during business hours on (03) 9600 3330.</span><br><br></br><img src='http://hopeearle.com.au/Image/LOGO.png' style='width:130px;' alt='http://hopeearle.com.au/'>";
			string result = sendmail(Email.Text, "Thank you for contacting Hope Earle Business & Property Lawyers.", strMessage2);
			
            result = sendmail(ConfigurationManager.AppSettings["ToMailAddress"].ToString(), "WEBSITE QUERY - " + Firstname.Text, textBody);
			//result = sendmail("venkatesan.m@pragitech.com", "WEBSITE QUERY - " + Firstname.Text, textBody);

            if (result == "OK")
            {
                error.InnerText = "Thanks for submitting your query.  One of our staff will get back to you promptly.";
                Firstname.Text = "";
                Lastname.Text = "";
                companyname.Text = "";
                position.Text = "";
                Phone.Text = "";
                Email.Text = "";
                comment.InnerText = "";
                error.Style.Add("color", "#0d455d");
                gifImage.Visible = false;
                comment.Focus();
            }
            else
            {
                error.InnerText = result;
            }

        }
        catch (Exception ex)
        {
            error.InnerText = ex.Message.ToString();
        }
    }
}