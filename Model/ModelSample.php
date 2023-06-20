<?php
namespace Model;

use Model\DB;

class ModelSample extends DB
{
    public $trans_id;
    public $ma_hethong;
    public $ngay_capnhat;
    public $global_id;
    public $ngay_td;
    public $nvtv_trcxn;
    public $ten_nvtv_trcxn;
    public $ma_cs;
    public $loai_dv;
    public $nvht_congdong;
    public $ten_nvht_congdong;
    public $tc_congdong;
    public $xn_congdong;
    public $ma_duan_congdong;
    public $stt;
    public $ma_xnsl;
    public $nguon_gioithieu;
    public $ma_tccd;
    public $ma_ict;
    public $ma_sns;
    public $csyt_gt;
    public $mxh_gt;
    public $hdxh;
    public $ho_ten;
    public $gioi_tinh;
    public $ngay_sinh;
    public $nam_sinh;
    public $sdt;
    public $loai_giayto;
    public $cccd;
    public $cmnd;
    public $ho_chieu;
    public $gplx;
    public $bhyt;
    public $giayto_khac;
    public $khongco_giayto;
    public $diachi_cutru;
    public $tt_cutru;
    public $qh_cutru;
    public $px_cutru;
    public $diachi_hk;
    public $tt_hk;
    public $qh_hk;
    public $px_hk;
    public $nghe_nghiep;
    public $dan_toc;
    public $dtnc;
    public $dtnc_khac;
    public $hvnc;
    public $hvnc_khac;
    public $ls_kqxn;
    public $ls_ngayxn;
    public $ls_prep;
    public $ls_arv;
    public $dongy_cgarv;
    public $xn_lai;
    public $dongy_sddv;
    public $loai_dvxn;
    public $txn_nhan_sp;
    public $txn_sp;
    public $txn_sp_khac;
    public $txn_ngaynhan;
    public $txn_kq;
    public $loai_xnsl;
    public $kq_xnsl;
    public $kq_xn_knkt;
    public $tinh_cscg;
    public $ma_cscg;
    public $ten_cscg_khac;
    public $ngay_dk_sddv;
    public $tinh_cs_xnkd;
    public $ma_cs_xnkd;
    public $ten_cs_xnkd_khac;
    public $ma_xnkd_hiv;
    public $ngay_khang_dinh;
    public $ngay_xnkd;
    public $ngay_nhan_kqkd_hiv;
    public $ngay_nhan_kq_xnkd;
    public $loai_xnkd_hiv;
    public $kq_xnkd_hiv;
    public $ngay_tv_sauxn;
    public $nvtv_sauxn;
    public $ten_nvtv_sauxn;
    public $sangloc_prep;
    public $du_tc_prep;
    public $dongy_prep;
    public $lydo_ko_prep;
    public $ngay_prep;
    public $ma_prep;
    public $tinh_cs_prep;
    public $ma_cs_prep;
    public $cs_prep_khac;
    public $dv_duphong;
    public $dongy_npep;
    public $lydo_ko_npep;
    public $ngay_npep;
    public $ma_npep;
    public $cs_npep;
    public $dv_duphong_khac;
    public $dongy_arv;
    public $lydo_ko_arv;
    public $tinh_cs_arv;
    public $ma_cs_arv;
    public $ten_cs_arv_khac;
    public $ngay_arv;
    public $ma_arv;
    public $ngay_gn_duytri_dt;
    public $kq_duytri_dt;

    public function __construct()
    {
        parent::__construct("sample");
    }

}

?>