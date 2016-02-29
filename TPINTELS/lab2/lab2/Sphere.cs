using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tao.OpenGl;
using Tao.FreeGlut;
using Tao.Platform.Windows;

namespace lab2
{
    class Sphere : Shape
    {
        public double x { get; set; }
        public double y { get; set; }
        public double z { get; set; }
        public double r { get; set; }
        public Sphere(double x, double y, double z, double r)
        {
            this.x = x;
            this.y = y;
            this.z = z;
            this.r = r;
        }
        public void draw()
        {


            Gl.glTranslated(x, y, z);
            Gl.glRotated(0, 0, 0, 0);

            Glut.glutWireSphere(r, 128, 128);


        }
    }
    class Cone : Shape
    {
        public double x { get; set; }
        public double y { get; set; }
        public double z { get; set; }
        public double r { get; set; }
        public double h { get; set; }
        public Cone(double x, double y, double z, double r, double h)
        {
            this.x = x;
            this.y = y;
            this.z = z;
            this.r = r;
            this.h = h;
        }
        public void draw()
        {


            Gl.glTranslated(x, y, z);
            Gl.glRotated(0, 0, 0, 0);

            Glut.glutWireCone(r,h,128,128);


        }
    }
}
