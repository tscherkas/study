using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace lab1
{
    public partial class Form1 : Form
    {
        public List<Expression> expressions { get; }
        public Expression currentExpression { get; set; }
        public Form1()
        {
            InitializeComponent();
            expressions = new List<Expression>();
            expressions.Add(new Expression1());
            expressions.Add(new Expression2());
            expressions.Add(new Expression3());
            expressions.Add(new Expression4());
            expressions.Add(new Expression5());
            radioButton1_CheckedChanged(null, null);
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                pictureBox1.Image = lab1.Properties.Resources._1;
                currentExpression = expressions[0];
                dataGridView1.Rows.Clear();
                dataGridView1.Rows.Add(2);
                dataGridView1.Rows[0].Cells[0].Value = "x";
                dataGridView1.Rows[1].Cells[0].Value = "y";
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                pictureBox1.Image = lab1.Properties.Resources._2;
                currentExpression = expressions[1];
                dataGridView1.Rows.Clear();
                dataGridView1.Rows.Add();
                dataGridView1.Rows[0].Cells[0].Value = "x";
            }

        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)
            {
                pictureBox1.Image = lab1.Properties.Resources._3;
                currentExpression = expressions[2];
                dataGridView1.Rows.Clear();
                dataGridView1.Rows.Add(2);
                dataGridView1.Rows[0].Cells[0].Value = "x";
                dataGridView1.Rows[1].Cells[0].Value = "y";

            }

        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton4.Checked)
            {
                pictureBox1.Image = lab1.Properties.Resources._4;
                currentExpression = expressions[3];
                dataGridView1.Rows.Clear();
                dataGridView1.Rows.Add(2);
                dataGridView1.Rows[0].Cells[0].Value = "x";
                dataGridView1.Rows[1].Cells[0].Value = "y";

            }

        }

        private void radioButton5_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton5.Checked)
            {
                pictureBox1.Image = lab1.Properties.Resources._5;
                currentExpression = expressions[4];
                dataGridView1.Rows.Clear();
                dataGridView1.Rows.Add();
                dataGridView1.Rows[0].Cells[0].Value = "x";

            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            List<double> expressionParams = new List<double>();
            foreach (DataGridViewRow item in dataGridView1.Rows)
            { 
                double p;
                if(Double.TryParse((string)item.Cells[1].Value,out p))
                    expressionParams.Add(p);
                else
                {
                    textBox1.Text = "Параметр "+ item.Cells[0].Value + " задан неверно";
                    break;
                }
            }
            if (textBox1.Text.Length == 0)
                textBox1.Text =  currentExpression.calculate(expressionParams).ToString();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
    public abstract class Expression
    {
        public abstract double calculate(List<double> paramsArray);
    }
    public class Expression1 : Expression
    {
        public override double calculate(List<double> paramsArray)
        {
            double x = paramsArray[0];
            double y = paramsArray[1];
            return (3 + Math.Exp(y-1))/(1+ x*x*Math.Abs(y-Math.Tan(x)));
        }
    }
    public class Expression2 : Expression
    {
        public override double calculate(List<double> paramsArray)
        {
            double x = paramsArray[0];
            return x-x*x*x/3 + Math.Pow(x,5)/5;
        }
    }
    public class Expression3 : Expression
    {
        public override double calculate(List<double> paramsArray)
        {
            double x = paramsArray[0];
            double y = paramsArray[1];
            return 
                Math.Log(
                    Math.Abs(
                        (y-Math.Sqrt(
                            Math.Abs(x)))
                        *
                        (x - y/(x+x*x/4))
                        )
                   );
        }
    }
    public class Expression4 : Expression
    {
        public override double calculate(List<double> paramsArray)
        {
            double x = paramsArray[0];
            double y = paramsArray[1];
            return
               Math.Pow(1 - Math.Tan(x), 1 / Math.Tan(x))
               +
               Math.Cos(x - y);
        }
    }
    public class Expression5 : Expression
    {
        public override double calculate(List<double> paramsArray)
        {
            double x = paramsArray[0];
            return
               Math.Log(
                   Math.Abs(
                       Math.Cos(x)
                       )
                   )
              /
              Math.Log(1+x*x);
        }
    }
}
