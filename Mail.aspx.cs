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
public partial class Mail : System.Web.UI.Page
{

    string textBodys;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static string ContactQuery(string FirstName, string LastName, string Email, string Comment, string PhoneNumber, string Company, string Position, string Subscriber)
    {
        try
        {

            string zoneId = "E. Australia Standard Time";
            TimeZoneInfo zone = TimeZoneInfo.FindSystemTimeZoneById(zoneId);
            DateTime australianNow = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, zone);
            string Date = australianNow.ToString("dd MMM yyyy HH:mm");
            //CommonMail Com = new CommonMail();


            string textBody = "<html><head><style> table{border-collapse:collapse;}td{padding-left:10px;border:solid 1px #aaaaaa;background-color:#eeeeee;font-family:Calibri;font-size:10pt;}</style></head><body><table border='1px' cellspacing='0' style='border-collapse: collapse; border-width: 1px;  font-size: 15px;  margin: 1em auto; padding: 0; -webkit-border-radius: 6px;  -moz-border-radius: 6px;   border-radius: 6px;overflow: hidden;border: 1px thin;border-collapse: separate;border-spacing: 0;width: 600px;'><tr><td ><b>First Name</b></td><td style='width: 414px;background-color:#fff'>" + FirstName + "</td></tr><tr><td ><b>Last Name</b> </td> <td style='width: 414px;background-color:#fff'>  " + LastName + " </td></tr><tr><td ><b>Company</b></td><td style='width: 414px;background-color:#fff'> " + Company + " </td></tr><tr><td ><b>Position</b></td><td style='width: 414px;background-color:#fff'>" + Position + " </td></tr><tr><td ><b>Phone Number </b> </td><td style='width: 414px;background-color:#fff'>  " + PhoneNumber + "</td></tr><tr><td > <b>Email</b></td><td style='width: 414px;background-color:#fff'>" + Email + "</td></tr><tr><td ><b>Message</b> </td><td style='width: 414px;background-color:#fff'>" + Comment + "  </td></tr><tr><td ><b>News Letter Subscription</b> </td><td style='width: 414px;background-color:#fff'>" + Subscriber + "  </td></tr><tr><td ><b>Date & Time</b> </td><td style='width: 414px;background-color:#fff'>" + Date + "  </td></tr>";

            textBody += "</table></body></html>";

            sendmail("jairaj.j2s@gmail.com", "Site contact form", textBody);

            //textBodys = textBody;
            return "Mail sent";

        }
        catch (Exception ex)
        {
            return "Mail not sent " + ex.ToString();
        }
    }
     
    public static string sendmail(string strTo, string strSubject, string strBody)
    {
        try
        {
            // SmtpClient smtp = new SmtpClient("", 25);
            SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtpout.secureserver.net";
            smtp.Host = "smtpout.secureserver.net";
            smtp.Port = 25;
            smtp.EnableSsl = false;

            NetworkCredential cr = new NetworkCredential("info@pragitech.com", "Welcome");

            smtp.Credentials = cr;
            System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();
            mailMessage.IsBodyHtml = true;
            mailMessage.From = new MailAddress("info@pragitech.com");
            mailMessage.To.Add(new MailAddress(strTo));
            mailMessage.Subject = strSubject;

            mailMessage.Body = strBody;
            smtp.Send(mailMessage);
        }
        catch (Exception exp)
        {
            return exp.Message.ToString();
        }
        return "OK";
    }
}