using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.Models
{
    public class Nuoc
    {
        QLMatKinhDataContext mk = new QLMatKinhDataContext();
        public string MaNSX { set; get; }
        public string TenNSX { set; get; }
    }
}