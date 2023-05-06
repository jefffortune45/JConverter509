using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JConverter
{
    public partial class MainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            poid.BackColor = System.Drawing.Color.DarkGray;
           
            temperature.BackColor = System.Drawing.ColorTranslator.FromHtml("#660066");
            btnLong.BackColor = System.Drawing.ColorTranslator.FromHtml("#660066");
     

            Poid_class poids = new Poid_class();
            List<string> listePoids = poids.maListe;
            ListBox1.Items.Clear();
            ListBox2.Items.Clear();
            foreach (string p in listePoids)
            {
                ListBox1.Items.Add(p);
                ListBox2.Items.Add(p);
            }
            poid.Enabled = false; 
            temperature.Enabled = true;
            btnLong.Enabled = true;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           /** // Récupérer la valeur du TextBox
            double valeur;
            double resultat;
            //double valeur = double.Parse(TextBox1.Text);
            string uniteSource = ListBox1.SelectedValue;
            string uniteCible = ListBox2.SelectedValue;
            if (double.TryParse(TextBox1.Text, out valeur))
            {
                Poid_class poids = new Poid_class();
                resultat = (double)poids.Conversion(uniteSource, uniteCible, valeur);
                TextBox2.Text=resultat.ToString();

            }**/




           // TextBox2.Text = TextBox1.Text;
        }

        protected void long_Click(object sender, EventArgs e)
        {
            
                  btnLong.BackColor = System.Drawing.Color.DarkGray;
            
            poid.BackColor = System.Drawing.ColorTranslator.FromHtml("#660066");
            temperature.BackColor = System.Drawing.ColorTranslator.FromHtml("#660066");
            Poid_class poids = new Poid_class();
            List<string> lislong = poids.unitLong;
            ListBox1.Items.Clear();
            ListBox2.Items.Clear();
            foreach (string p in lislong)
            {

                ListBox1.Items.Add(p);
                ListBox2.Items.Add(p);
            }
            poid.Enabled = true;
            temperature.Enabled = true;
            btnLong.Enabled = false;



        }

        protected void temperature_Click(object sender, EventArgs e)
        {
            temperature.BackColor = System.Drawing.Color.DarkGray;
            poid.BackColor = System.Drawing.ColorTranslator.FromHtml("#660066");
            btnLong.BackColor = System.Drawing.ColorTranslator.FromHtml("#660066");
            Poid_class poids = new Poid_class();
            List<string> listetemp = poids.temperatureUnit;
            ListBox1.Items.Clear();
            ListBox2.Items.Clear();
            foreach (string p in listetemp)
            {
                
                ListBox1.Items.Add(p);
                ListBox2.Items.Add(p);
            }
            poid.Enabled = true;
            temperature.Enabled = false;
            btnLong.Enabled = true;

        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            btnLong.BackColor= System.Drawing.ColorTranslator.FromHtml("#B0A4A4");
            poid.BackColor = System.Drawing.Color.DarkGray;
            temperature.BackColor = System.Drawing.Color.DarkGray;
            Poid_class poids = new Poid_class();
            List<string> lislong = poids.unitLong;
            ListBox1.Items.Clear();
            ListBox2.Items.Clear();
            foreach (string p in lislong)
            {

                ListBox1.Items.Add(p);
                ListBox2.Items.Add(p);
            }
            poid.Enabled = true;
            temperature.Enabled = true;
            btnLong.Enabled = false;

        }
    }

    public class MonServiceWeb : System.Web.Services.WebService
    {
        [WebMethod]
        public double Conversion(string uniteSource, string uniteCible, double valeur)
        {
            double resultat = 0.0;

            switch (uniteSource)
            {
                case "Gram":
                    switch (uniteCible)
                    {
                        case "Kilogram":
                            resultat = valeur / 1000;
                            break;
                        case "Milligram":
                            resultat = valeur * 1000;
                            break;
                        case "Metric ton":
                            resultat = valeur / 1000000;
                            break;
                        case "Long Ton":
                            resultat = valeur / 1016.05;
                            break;
                        case "Short Ton":
                            resultat = valeur / 907.185;
                            break;
                        case "Pound":
                            resultat = valeur / 453.592;
                            break;
                        case "Ounce":
                            resultat = valeur / 28.3495;
                            break;
                        case "Carrat":
                            resultat = valeur / 0.2;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur / 6.02214129E+23;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }

                    break;

                case "Kilogram":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 1000;
                            break;
                        case "Milligram":
                            resultat = valeur * 1000000;
                            break;
                        case "Metric ton":
                            resultat = valeur / 1000;
                            break;
                        case "Long Ton":
                            resultat = valeur / 1016.05 * 1000;
                            break;
                        case "Short Ton":
                            resultat = valeur / 907.185 * 1000;
                            break;
                        case "Pound":
                            resultat = valeur / 0.453592;
                            break;
                        case "Ounce":
                            resultat = valeur / 0.0283495;
                            break;
                        case "Carrat":
                            resultat = valeur / 0.0002;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur / 6.02214129E+26;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;
                case "Milligram":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur / 1000;
                            break;
                        case "Kilogram":
                            resultat = valeur / 1000000;
                            break;
                        case "Metric ton":
                            resultat = valeur / 1000000000;
                            break;
                        case "Long Ton":
                            resultat = valeur / 1.01605E+9;
                            break;
                        case "Short Ton":
                            resultat = valeur / 907185000;
                            break;
                        case "Pound":
                            resultat = valeur / 453592 / 1000;
                            break;
                        case "Ounce":
                            resultat = valeur / 28349.5;
                            break;
                        case "Carrat":
                            resultat = valeur / 200;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur / 6.02214129E+26 * 1000000;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;
                case "Metric ton":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 1000000;
                            break;
                        case "Kilogram":
                            resultat = valeur * 1000;
                            break;
                        case "Milligram":
                            resultat = valeur * 1000000000;
                            break;
                        case "Long Ton":
                            resultat = valeur / 1.0160469088;
                            break;
                        case "Short Ton":
                            resultat = valeur / 0.90718474;
                            break;
                        case "Pound":
                            resultat = valeur * 2204.6226218;
                            break;
                        case "Ounce":
                            resultat = valeur * 35273.96194958;
                            break;
                        case "Carrat":
                            resultat = valeur * 5000000000;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur * 6.0221367e+29;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;
                case "Long Ton":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 1016046.9088;
                            break;
                        case "Kilogram":
                            resultat = valeur * 1016.0469088;
                            break;
                        case "Milligram":
                            resultat = valeur * 1.0160469088e+9;
                            break;
                        case "Metric ton":
                            resultat = valeur / 1016.0469088;
                            break;
                        case "Short Ton":
                            resultat = valeur * 1.12;
                            break;
                        case "Pound":
                            resultat = valeur * 2240;
                            break;
                        case "Ounce":
                            resultat = valeur * 35840;
                            break;
                        case "Carrat":
                            resultat = valeur * 5.08023454e+9;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur * 3.05077568e+29;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;
                case "Short Ton":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 907184.74;
                            break;
                        case "Kilogram":
                            resultat = valeur * 907.18474;
                            break;
                        case "Milligram":
                            resultat = valeur * 9.0718474e+8;
                            break;
                        case "Metric ton":
                            resultat = valeur / 1.10231131;
                            break;
                        case "Long Ton":
                            resultat = valeur / 1.12;
                            break;
                        case "Pound":
                            resultat = valeur * 2000;
                            break;
                        case "Ounce":
                            resultat = valeur * 32000;
                            break;
                        case "Carrat":
                            resultat = valeur * 4.5359237e+9;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur * 2.72102672e+29;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;
                case "Pound":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 453.592;
                            break;
                        case "Kilogram":
                            resultat = valeur / 2.20462;
                            break;
                        case "Milligram":
                            resultat = valeur * 453592.37;
                            break;
                        case "Metric ton":
                            resultat = valeur / 2204.6226218;
                            break;
                        case "Long Ton":
                            resultat = valeur / 2240;
                            break;
                        case "Short Ton":
                            resultat = valeur / 2000;
                            break;
                        case "Ounce":
                            resultat = valeur * 16;
                            break;
                        case "Carrat":
                            resultat = valeur * 2267.96185;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur * 1.35833151e+26;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;

                case "Ounce":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 28.3495;
                            break;
                        case "Kilogram":
                            resultat = valeur * 0.0283495;
                            break;
                        case "Milligram":
                            resultat = valeur * 28349.5;
                            break;
                        case "Metric ton":
                            resultat = valeur / 35273.96194958;
                            break;
                        case "Long Ton":
                            resultat = valeur / 35840;
                            break;
                        case "Short Ton":
                            resultat = valeur / 32000;
                            break;
                        case "Carrat":
                            resultat = valeur * 141.7476;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur * 5.66053774e+23;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;

                case "Carrat":
                    switch (uniteCible)
                    {
                        case "Gram":
                            resultat = valeur * 0.2;
                            break;
                        case "Kilogram":
                            resultat = valeur * 0.0002;
                            break;
                        case "Milligram":
                            resultat = valeur * 200;
                            break;
                        case "Metric ton":
                            resultat = valeur * 2e-7;
                            break;
                        case "Long Ton":
                            resultat = valeur * 1.57473e-7;
                            break;
                        case "Short Ton":
                            resultat = valeur * 2.20462e-7;
                            break;
                        case "Carrat":
                            resultat = valeur;
                            break;
                        case "Atomic mass unit":
                            resultat = valeur * 3.82424817e+20;
                            break;
                        default:
                            resultat = valeur;
                            break;
                    }
                    break;









            }
            return resultat;


        }
    }


}