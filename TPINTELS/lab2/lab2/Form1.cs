using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

// для работы с библиотекой OpenGL 
using Tao.OpenGl;
// для работы с библиотекой FreeGLUT 
using Tao.FreeGlut;
// для работы с элементом управления SimpleOpenGLControl 
using Tao.Platform.Windows;

namespace lab2
{
    public partial class Form1 : Form
    {
        Shape shape;
        double x = 0;
        double y = 0;
        double z = -4;
        double angle_x = 0;
        double angle_y = 0;
        double angle_z = 0;
        double angle_x_speed = 0;
        double angle_y_speed = 0;
        double angle_z_speed = 0;
        double n = 1;

        public Form1()
        {
            InitializeComponent();
            simpleOpenGlControl1.InitializeContexts();
            simpleOpenGlControl1.MouseWheel += SimpleOpenGlControl1_MouseWheel;
            simpleOpenGlControl1.KeyDown += SimpleOpenGlControl1_KeyDown;
            simpleOpenGlControl1.KeyUp += SimpleOpenGlControl1_KeyUp; ;
        }

        private void SimpleOpenGlControl1_KeyUp(object sender, KeyEventArgs e)
        {
            switch (e.KeyCode)
            {
                case Keys.Left:

                    e.Handled = true;
                    angle_y_speed = 0;
                    break;
                case Keys.Right:
                    e.Handled = true;
                    angle_y_speed = 0;
                    break;
                case Keys.Up:
                    e.Handled = true;
                    angle_x_speed = 0;
                    break;
                case Keys.Down:
                    angle_x_speed = 0;
                    break;
                case Keys.RControlKey:
                    e.Handled = true;
                    angle_z_speed = 0;
                    break;
                case Keys.RShiftKey:
                    e.Handled = true;
                    angle_z_speed = 0;
                    break;
            }
        }

        private void SimpleOpenGlControl1_KeyDown(object sender, KeyEventArgs e)
        {
            switch(e.KeyData)
            {
                case Keys.Left:

                    e.Handled = true;
                    angle_y_speed = -1;
                    break;
                case Keys.Right:
                    e.Handled = true;
                    angle_y_speed = 1;
                    break;
                case Keys.Up:
                    e.Handled = true;
                    angle_x_speed = -1;
                    break;
                case Keys.Down:
                    angle_x_speed = 1;
                    break;
                case Keys.RControlKey:
                    e.Handled = true;
                    angle_z_speed = 1;
                    break;
                case Keys.RShiftKey:
                    e.Handled = true;
                    angle_z_speed = -1;
                    break;
            }
        }

        private void SimpleOpenGlControl1_MouseWheel(object sender, MouseEventArgs e)
        {
            n += Math.Sign(e.Delta)*0.1;    
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Glut.glutInit();
            Glut.glutInitDisplayMode(Glut.GLUT_RGB | Glut.GLUT_DOUBLE | Glut.GLUT_DEPTH);

            // отчитка окна 
            Gl.glClearColor(255, 255, 255, 1);

            // установка порта вывода в соответствии с размерами элемента anT 
            Gl.glViewport(0, 0, simpleOpenGlControl1.Width, simpleOpenGlControl1.Height);


            // настройка проекции 
            Gl.glMatrixMode(Gl.GL_PROJECTION);
            Gl.glLoadIdentity();
            Glu.gluPerspective(45, (float)simpleOpenGlControl1.Width / (float)simpleOpenGlControl1.Height, 1, 200);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            Gl.glLoadIdentity();

            // настройка параметров OpenGL для визуализации 
            Gl.glEnable(Gl.GL_DEPTH_TEST);
            timer1.Start();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //shapes.Add(new Sphere(x, y, z, 1));
            shape = new Sphere(0, 0, 0, 2);
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            Gl.glClear(Gl.GL_COLOR_BUFFER_BIT | Gl.GL_DEPTH_BUFFER_BIT);
            Gl.glColor3f(1.0f, 0, 0);
            Gl.glMatrixMode(Gl.GL_MODELVIEW);
            Gl.glLoadIdentity();
            angle_x += angle_x_speed;
            angle_y += angle_y_speed;
            angle_z += angle_z_speed;
            Gl.glRotated(angle_x, 1, 0, 0);
            Gl.glRotated(angle_y, 0, 1, 0);
            Gl.glRotated(angle_z, 0, 0, 1);
            Gl.glTranslated(-x, -y, -z-5);
            Gl.glScaled(n,n,n);
            if (shape != null)
                shape.draw();
            textBox1.Text = "x: " + x + "  y: " + y + "  z: " + z;
            Gl.glPopMatrix();
            Gl.glFlush();

            simpleOpenGlControl1.Invalidate();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //shapes.Add(new Cone(-x, -y, -z, 10,20));
            shape = new Cone(0, 0, 0, 2,2);
        }
    }
}
