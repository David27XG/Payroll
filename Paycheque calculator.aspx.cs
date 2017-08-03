using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Paycheque_Calculator
{
    public partial class Paycheque_calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            txtTextbox1.Text = string.Empty;
            txtTextbox2.Text = string.Empty;
            txtTextbox3.Text = string.Empty;
            txtTextbox4.Text = string.Empty;
            txtTextbox5.Text = string.Empty;
            txtTextbox6.Text = string.Empty;
            txtTextbox7.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Named constants
                const decimal BASE_HOURS = 40m;
                const decimal OVERTIME_RATE = 1.5m;

                //local variables
                decimal hoursworked;
                decimal hourlyrateofpay;
                decimal basepay;
                decimal overtimehours;
                decimal overtimepay;
                decimal grosspay;

                //Get the hours worked and hourly pay rate.
                hoursworked = decimal.Parse(txtTextbox3.Text);
                hourlyrateofpay = decimal.Parse(txtTextbox4.Text);

                //Determine the gross pay.
                if (hoursworked > BASE_HOURS)
                {
                    //Calculate the base pay (without overtime).
                    basepay = hourlyrateofpay * BASE_HOURS;

                    //Calculate the number of overtime hours.
                    overtimehours = hoursworked - BASE_HOURS;

                    //Calculate the overtime pay.
                    overtimepay = overtimehours * hourlyrateofpay * OVERTIME_RATE;

                    //Calculate the number of overtime hours.
                    overtimehours = hoursworked - BASE_HOURS;

                    //Calculate the overtime pay.
                    overtimepay = overtimehours * hourlyrateofpay * OVERTIME_RATE;

                    //Calculate the gross pay.
                    grosspay = basepay + overtimepay;
                }
                else
                {
                    //calculate the gross pay.
                    grosspay = hoursworked * hourlyrateofpay;
                }
                //Assign to textbox
                txtTextbox5.Text.ToString();
            }
            catch
            {
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

                int value1 = 0;
               
                value1 = Convert.ToInt32(this.txtTextbox5.Text);
                int total = value1 * 24/100;
                this.txtTextbox6.Text = total.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
            {

                int value1 = 0;
                int value2 = 0;

                value1 = Convert.ToInt32(this.txtTextbox5.Text);
                value2 = Convert.ToInt32(this.txtTextbox6.Text);
                int total = value1 - value2;
                this.txtTextbox7.Text = total.ToString();
            }
        }
}


            
            
    
