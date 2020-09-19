using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
namespace DoAn.Controllers
{
    public class KhachHangController : Controller
    {
        //
        // GET: /KhachHang/
        QLMatKinhDataContext mk = new QLMatKinhDataContext();
        //đăng nhập đăng kí
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DN(FormCollection col, tbl_KhachHang kh)
        {
            kh = mk.tbl_KhachHangs.FirstOrDefault(x => x.SoDienThoai == col["Txt_ID"] && x.MatKhau == col["Txt_MK"]);
            if (kh == null)
            {
                if (mk.tbl_KhachHangs.FirstOrDefault(x => x.SoDienThoai == col["Txt_ID"]) == null)
                    ViewData["ID"] = "Sai tên số điện thoại";
                if (mk.tbl_KhachHangs.FirstOrDefault(x => x.SoDienThoai == col["Txt_MK"]) == null)
                    ViewData["MK"] = "Sai mật khẩu";
                return View();
            }
            else
            {
                Session["KH"] = kh;
                return RedirectToAction("Index", "Home");
            }
        }

        [HttpGet]
        public ActionResult DangKy(string sdt)
        {
            if (sdt == null)
                return View();
            else
                if (mk.tbl_KhachHangs.FirstOrDefault(x => x.SoDienThoai == sdt) != null)
                {
                    ViewData["TB_DK"] = "Số điện thoại này đã được sử dụng!";
                }
            return View();
        }

        [HttpPost]
        public ActionResult XL_DangKy(FormCollection col, tbl_KhachHang kh)
        {
             kh = mk.tbl_KhachHangs.FirstOrDefault(x => x.SoDienThoai == col["Txt_SDT"]);
            if (kh == null)
            {
                kh = new tbl_KhachHang();
                kh.TenKhachHang = col["Txt_Ten"];
                kh.SoDienThoai = col["Txt_SDT"];
                kh.DiaChi = col["Txt_DC"];
                kh.MatKhau = col["Txt_MK"];
                kh.GioiTinh = col["rad_GT"];
                mk.tbl_KhachHangs.InsertOnSubmit(kh);
                mk.SubmitChanges();
                return RedirectToAction("DN");
            }
            else
                return RedirectToAction("DangKy", new { sdt = col["Txt_SDT"].ToString() });
        }

        public ActionResult LogOut()
        {
            Session["KH"] = null;
            return RedirectToAction("Index", "Home");
        }

        //xem thong tin KH
        public ActionResult TTKH(int ma)
        {
            tbl_KhachHang kh = mk.tbl_KhachHangs.FirstOrDefault(x => x.MaKhachHang == ma);
            return View(kh);
        }

    }
}
