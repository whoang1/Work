using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region "More Namespaces"
using RevertSystem.DAL;
using RevertSystem.Entities;
//using RevertSystem.Entities.POCOs;
//using RevertSystem.Entities.DTOs;
using System.ComponentModel;
#endregion
namespace RevertSystem.BLL
{
    [DataObject]
    public class AdminController
    {
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<EmployeeSkill> Entity_List()
        {
            using (RevertContext context = new RevertContext())
            {
                return context.EmployeeSkills.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Employee> QueryNav_List()
        {
            using (RevertContext context = new RevertContext())
            {
                var results = from eachEmpSkillrow in context.EmployeeSkills
                              where eachEmpSkillrow.SkillID == 8
                              select eachEmpSkillrow.Employee;
                return results.ToList();
            }
        }
    }
}
