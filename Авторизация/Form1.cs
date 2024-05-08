using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Авторизация
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
        private void clearButton_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtUsername.Focus();
        }

        private void checkboxShowPass_CheckedChanged(object sender, EventArgs e)
        {
            if (checkboxShowPass.Checked)
            {
                txtPassword.PasswordChar = '\0';
            }
            else
            {
                txtPassword.PasswordChar = '*';

            }
        }

        private void registrationButton_Click(object sender, EventArgs e)
        {
            using (var db = new МедицинскаяЛабораторияEntities())
            {
                var usern = db.Авторизация.FirstOrDefault(Авторизация => Авторизация.Логин == txtUsername.Text && Авторизация.Пароль == txtPassword.Text);
                if (usern != null)  
                {
                    new Form2().Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль");
                }
            }

        }
    }
}
