using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Units.DataAccessLayer;

namespace Units
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataModel db = new DataModel();
            try
            {
                tbl_UNTMST unitMaster = new tbl_UNTMST
                {
                    Unit_name = txtUnitName.Text,
                    Unit_group = txtUnitGroup.Text,
                    Unit_desc = txtUnitDescription.Text,
                };
                db.tbl_UNTMST.Add(unitMaster);
                db.SaveChanges();
                gvUnitMasterData.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnSbmitGroupData_Click(object sender, EventArgs e)
        {
            DataModel db = new DataModel();
            try
            {
                tbl_GRPMST groupMaster = new tbl_GRPMST
                {
                    Group_code = txtGroupCode.Text,
                    Group_name = txtGroupName.Text,
                    Und_group = txtUnderGroupName.Text,
                    Group_desc = txtGroupDescription.Text,
                    Untmst_id = Convert.ToInt32(ddlUnitMasterId.Text),
                };
                db.tbl_GRPMST.Add(groupMaster);
                db.SaveChanges();
                gvGroupMasterData.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void btnSubmitItemData_Click(object sender, EventArgs e)
        {
            DataModel db = new DataModel();
            try
            {
                tbl_ITEMAS itemMaster = new tbl_ITEMAS
                {
                    It_code = txtItemCode.Text,
                    It_name =txtItemName.Text,
                    It_spec =txtItemSpecification.Text,
                    Grpmst_id = Convert.ToInt32(ddlGroupMasterId.Text),
                    It_desc = txtGroupDescriptionItem.Text,
                    Untmst_id = Convert.ToInt32(ddlUnitMasterId.Text)
                };
                db.tbl_ITEMAS.Add(itemMaster);
                db.SaveChanges();
                gvItemMasterData.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
