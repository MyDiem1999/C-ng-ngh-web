using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.Models
{
    public class Nhom
    {
        QLMatKinhDataContext mk = new QLMatKinhDataContext();
        public string MaN { set; get; }
        public string Ten { set; get; }

        public Nhom(string ma)
        {
            MaN = ma;
            tbl_Nhom Nhom = mk.tbl_Nhoms.FirstOrDefault(x => x.MaNhom == ma);
            Ten = Nhom.TenNhom;
        }
    }

}