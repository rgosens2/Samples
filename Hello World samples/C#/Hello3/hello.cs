using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;

namespace HelloWorld
{
    public class Form1 : Form
    {
        private Container components = null;

        public Form1()
        {
            InitializeComponent();
        }

        protected override void Dispose( bool disposing )
        {
            if( disposing )
            {
                if (components != null)
                {
                    components.Dispose();
                }
            }
            base.Dispose( disposing );
        }

        #region Windows Form Designer generated code
        private void InitializeComponent()
        {
            this.components = new Container();
            this.Size = new Size(600,400);
            this.Text = "Hello World!";
        }
        #endregion

        [STAThread]
        static void Main()
        {
            Application.Run(new Form1());
        }
    }
}

