using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DoAn.Models;

namespace DoAn.Models
{   
    public class GioHang
    {
        QLMatKinhDataContext mk = new QLMatKinhDataContext();
        public string Masp { get; set; }
        public string Tensp { get; set; }
        public string Hinh { get; set; }
        public double DonGia { get; set; }
        public int SL { get; set; }
        public double ThanhTien
        {
            get { return SL*DonGia; }
        }

        public GioHang(string Ma)
        {
            Masp = Ma;
            tbl_SanPham sp = mk.tbl_SanPhams.Single(n => n.MaSanPham == Ma);
            Tensp = sp.TenSP;
            Hinh = sp.Hinh;
            DonGia =double.Parse(sp.Gia.ToString());
            SL = 1;
        }
    }
}