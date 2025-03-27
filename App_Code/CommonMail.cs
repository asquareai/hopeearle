using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
/// <summary>
/// Summary description for CommonMail
/// </summary>
public class CommonMail
{
	public CommonMail()
	{
		//
		// TODO: Add constructor logic here
		//
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