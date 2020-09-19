using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;

namespace DoAn.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        QLMatKinhDataContext mk = new QLMatKinhDataContext();

        public ActionResult Index()
        {
            List<tbl_SanPham> sp = mk.tbl_SanPhams.ToList();
            return View(sp);
        }

        //chi tiet san pham
        public ActionResult ChiTietSP(string ma)
        {
            tbl_SanPham sp = mk.tbl_SanPhams.FirstOrDefault(x => x.MaSanPham == ma);
            return View(sp);
        }

        //danh sach loc
        public ActionResult dsnhom()
        {
            List<tbl_Nhom> nh = mk.tbl_Nhoms.ToList();
            return PartialView(nh);
        }

        public ActionResult dsLoai()
        {
            List<tbl_Loai> lstLoai = mk.tbl_Loais.ToList();
            return PartialView(lstLoai);
        }

        public ActionResult dsNSX()
        {
            List<tbl_NhaSanXuat> lstNSX = mk.tbl_NhaSanXuats.ToList();
            return PartialView(lstNSX);
        }

        //loc du lieu
        public ActionResult Locds(string ThuocT, string ma)
        {
            List<tbl_SanPham> loai=null;
            if (ThuocT == "nhomm")
            {
                loai = mk.tbl_SanPhams.Where(x => x.tbl_Loai.Nhom == ma).ToList();
            }
            else if (ThuocT == "Loai")
            {
                loai = mk.tbl_SanPhams.Where(x => x.tbl_Loai.MaLoai == ma).ToList();
            }
            else if (ThuocT == "NSX")
            {
                loai = mk.tbl_SanPhams.Where(x => x.MaSX == int.Parse(ma)).ToList();
            }
            return View(loai);
        }

        [HttpPost]
        public ActionResult XLTK(FormCollection col)
        {
            List<tbl_SanPham> sp = mk.tbl_SanPhams.Where(x => x.TenSP == col["search"]).ToList();
            return View("Index", sp);
        }


    }
}
