using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        private DropDownList jobsDropDownList;
        public Entities db { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (db == null)
                db = new Entities();
        }

        protected void EmployeesEntityDataSource_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void JobsEntityDataSource_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
        {
            e.Context = (db as IObjectContextAdapter).ObjectContext;
        }

        protected void JobsDropDownList_Init(object sender, EventArgs e)
        {
            jobsDropDownList = sender as DropDownList;
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            var jobID = Convert.ToInt32(jobsDropDownList.SelectedValue);
            e.Values["Job_id"] = jobID;
        }
    }
}