using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
namespace DoAn.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/
        QLMatKinhDataContext mk = new QLMatKinhDataContext();

        //tao gio hang
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang == null)
            {
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }

        public ActionResult ThemGH(string Ma)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang sanpham = lstGioHang.Find(n => n.Masp == Ma);
            if (sanpham == null)
            {
                sanpham = new GioHang(Ma);
                lstGioHang.Add(sanpham);
                return Redirect("GioHang");
            }
            else
            {
                sanpham.SL++;
                return Redirect("GioHang");
            }
        }

        public ActionResult GioHang()
        {
            List<GioHang> lstGioHang = LayGioHang();
            if (lstGioHang.Count == 0)
                return RedirectToAction("Index","Home");
            ViewBag.SoluongTong = SoluongTong();
            ViewBag.TongTien = TongTien();
            return View(lstGioHang);
        }

        public ActionResult DeleteGioHang(string Ma)
        {
            List<GioHang> sanpham = LayGioHang();
            sanpham.RemoveAll(x => x.Masp == Ma);
            return Redirect("GioHang");
        }

        public ActionResult UpdateGioHang(FormCollection col, string Ma)
        {
            List<GioHang> sanpham = LayGioHang();
            foreach (var i in sanpham)
            {
                if (i.Masp == Ma)
                    i.SL = int.Parse(col["Txt_SL"]);
            }
            return Redirect("GioHang");
        }

        public int SoluongTong()
        {
            int tong = 0;
            List<GioHang> sanpham = Session["GioHang"] as List<GioHang>;
            if (sanpham != null)
                tong = sanpham.Sum(n => n.SL);
            return tong;
        }

        public double TongTien()
        {
            double tong = 0;
            List<GioHang> sanpham = LayGioHang();
            if (sanpham != null)
                tong += sanpham.Sum(n => n.ThanhTien);
            return tong;
        }

        public ActionResult HienThi()
        {
            List<GioHang> lst = LayGioHang();
            int sltong = SoluongTong();
            return ViewBag.SoluongTong = sltong;
        }

         //xu ly thanh toan
        public ActionResult XLTT()
        {
            if (Session["KH"] == null)
            {
                return RedirectToAction("DangNhap","KhachHang");
            }
            else
            {
                tbl_HoaDon hd = new tbl_HoaDon();
                hd.NgayTao = DateTime.Now;
                tbl_KhachHang kh =(tbl_KhachHang)Session["KH"];
                hd.MaKH = kh.MaKhachHang;
                mk.tbl_HoaDons.InsertOnSubmit(hd);
                mk.SubmitChanges();

                tbl_ChiTietHD ct;
                List<GioHang> GH = LayGioHang();
                foreach(var i in GH){
                    ct = new tbl_ChiTietHD();
                    ct.MaHD = hd.MaHoaDon;
                    ct.MaSP = i.Masp;
                    ct.SoLuong = i.SL;
                    mk.tbl_ChiTietHDs.InsertOnSubmit(ct);
                    mk.SubmitChanges();
                }
            }
            return RedirectToAction("Index","Home");
        }

    }
}
