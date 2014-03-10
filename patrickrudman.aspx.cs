using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Configuration;

namespace patrickrudman.com
{
  public partial class index:System.Web.UI.Page
  {
    public string siteName = ConfigurationManager.AppSettings.Get("site-name");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
      bool success = false; //simply because we cannot transfer within a catch block

      if(Page.IsValid)
      {
        try
        {
          shipIt();
          success = true;
        }
        catch(Exception ex)
        {
          errorObject eo = new errorObject(ex, true);
          string errorEmailTo = ConfigurationManager.AppSettings.Get("error-email-to");
          string errorEmailFrom = ConfigurationManager.AppSettings.Get("error-email-from");
          eo.sendAdminEmail(errorEmailTo, errorEmailFrom, siteName);
        }
      }

      if(success)
      {
        contactForm.InnerHtml = "<h2>thanks,</h2><p>I will be in touch shortly.</p>";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "postback();", true);

      }
      else
      {
        contactForm.InnerHtml = "<h2>dang...</h2><p style='margin:.3em;'>Something didn't work.  If you want, you can just email me:  <a href='mailto:patrudman@gmail.com'>patrudman@gmail.com</a>.</p>";
      }
    }

    private void shipIt()
    {
      //Set up to and from addresses
      string emailTo = ConfigurationManager.AppSettings.Get("email-to");
      string emailFrom = ConfigurationManager.AppSettings.Get("email-from");
      string emailFromDisplayName = ConfigurationManager.AppSettings.Get("email-from-display-name");
      string emailUserFrom = ConfigurationManager.AppSettings.Get("email-user-from");
      string emailUserFromDisplayName = ConfigurationManager.AppSettings.Get("email-user-from-display-name");
      string emailUserTo = email_address.Text;

      string emailBody = getFormData();
      //string applicantEmailBody = getResponseData();

      MailMessage emailBusinessMsg = null;
      //MailMessage emailUserMsg = null;

      SmtpClient smtp = null;

      try
      {
        smtp = new SmtpClient();
        smtp.Credentials = CredentialCache.DefaultNetworkCredentials;

        //Sends me notification email
        emailBusinessMsg = new MailMessage();
        emailBusinessMsg.From = new MailAddress(emailFrom, emailFromDisplayName);
        emailBusinessMsg.To.Add(emailTo);
        emailBusinessMsg.Subject = "PAR " + siteName + " Request Info Form (Sent " + DateTime.Now.ToShortDateString() + ")";
        emailBusinessMsg.Body = emailBody;
        emailBusinessMsg.IsBodyHtml = true;

        smtp.Send(emailBusinessMsg);

        //Send user email
        //emailUserMsg = new MailMessage();
        //emailUserMsg.From = new MailAddress(emailUserFrom, emailUserFromDisplayName);
        //emailUserMsg.To.Add(emailUserTo);
        //emailUserMsg.Subject = "thanks for contacting me";
        //emailUserMsg.Body = applicantEmailBody;
        //emailUserMsg.IsBodyHtml = true;
        //
        //smtp.Send(emailUserMsg);
      }

      finally
      {
        if(emailBusinessMsg != null)
          emailBusinessMsg.Dispose();

        //if(emailUserMsg != null)
        //  emailUserMsg.Dispose();
      }

    }

    private string getFormData()
    {
      cleanString cs = new cleanString();

      string formData = "<strong>" + siteName + " Contact Form (Sent " + DateTime.Now.ToShortDateString() + ")</strong><br /><br />" +
             "<strong>* name,</strong> " + cs.cleanItUp(name.Text, name.MaxLength) + "<br />" +
             "<strong>* email,</strong> " + cs.cleanItUp(email_address.Text, email_address.MaxLength) + "<br />" +
             "<strong>* message,</strong> " + cs.cleanItUp(message.Text, 500) + "<br />";

      formData += "";

      return formData;
    }

 //   private string getResponseData()
 //   {
 //     cleanString cs = new cleanString();
 //
 //     string formResponseData = "";
 //
 //     return formResponseData;
 //   }
  }
}
