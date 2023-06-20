<?php
namespace Model;

use Model\IModel;


class ModelSampleDB extends ModelSample implements IModel
{
    public function __construct($item = null)
    {
        parent::__construct();
        $this->trans_id = $item["trans_id"] ?? null;
        $this->ma_hethong = $item["ma_hethong"] ?? null;
        $this->ngay_capnhat = $item["ngay_capnhat"] ?? null;
        $this->global_id = $item["global_id"] ?? null;
        $this->ngay_td = $item["ngay_td"] ?? null;
        $this->nvtv_trcxn = $item["nvtv_trcxn"] ?? null;
        $this->ten_nvtv_trcxn = $item["ten_nvtv_trcxn"] ?? null;
        $this->ma_cs = $item["ma_cs"] ?? null;
        $this->loai_dv = $item["loai_dv"] ?? null;
        $this->nvht_congdong = $item["nvht_congdong"] ?? null;
        $this->ten_nvht_congdong = $item["ten_nvht_congdong"] ?? null;
        $this->tc_congdong = $item["tc_congdong"] ?? null;
        $this->xn_congdong = $item["xn_congdong"] ?? null;
        $this->ma_duan_congdong = $item["ma_duan_congdong"] ?? null;
        $this->stt = $item["stt"] ?? null;
        $this->ma_xnsl = $item["ma_xnsl"] ?? null;
        $this->nguon_gioithieu = $item["nguon_gioithieu"] ?? null;
        $this->ma_tccd = $item["ma_tccd"] ?? null;
        $this->ma_ict = $item["ma_ict"] ?? null;
        $this->ma_sns = $item["ma_sns"] ?? null;
        $this->csyt_gt = $item["csyt_gt"] ?? null;
        $this->mxh_gt = $item["mxh_gt"] ?? null;
        $this->hdxh = $item["hdxh"] ?? null;
        $this->ho_ten = $item["ho_ten"] ?? null;
        $this->gioi_tinh = $item["gioi_tinh"] ?? null;
        $this->ngay_sinh = $item["ngay_sinh"] ?? null;
        $this->nam_sinh = $item["nam_sinh"] ?? null;
        $this->sdt = $item["sdt"] ?? null;
        $this->loai_giayto = $item["loai_giayto"] ?? null;
        $this->cccd = $item["cccd"] ?? null;
        $this->cmnd = $item["cmnd"] ?? null;
        $this->ho_chieu = $item["ho_chieu"] ?? null;
        $this->gplx = $item["gplx"] ?? null;
        $this->bhyt = $item["bhyt"] ?? null;
        $this->giayto_khac = $item["giayto_khac"] ?? null;
        $this->khongco_giayto = $item["khongco_giayto"] ?? null;
        $this->diachi_cutru = $item["diachi_cutru"] ?? null;
        $this->tt_cutru = $item["tt_cutru"] ?? null;
        $this->qh_cutru = $item["qh_cutru"] ?? null;
        $this->px_cutru = $item["px_cutru"] ?? null;
        $this->diachi_hk = $item["diachi_hk"] ?? null;
        $this->tt_hk = $item["tt_hk"] ?? null;
        $this->qh_hk = $item["qh_hk"] ?? null;
        $this->px_hk = $item["px_hk"] ?? null;
        $this->nghe_nghiep = $item["nghe_nghiep"] ?? null;
        $this->dan_toc = $item["dan_toc"] ?? null;
        $this->dtnc = $item["dtnc"] ?? null;
        $this->dtnc_khac = $item["dtnc_khac"] ?? null;
        $this->hvnc = $item["hvnc"] ?? null;
        $this->hvnc_khac = $item["hvnc_khac"] ?? null;
        $this->ls_kqxn = $item["ls_kqxn"] ?? null;
        $this->ls_ngayxn = $item["ls_ngayxn"] ?? null;
        $this->ls_prep = $item["ls_prep"] ?? null;
        $this->ls_arv = $item["ls_arv"] ?? null;
        $this->dongy_cgarv = $item["dongy_cgarv"] ?? null;
        $this->xn_lai = $item["xn_lai"] ?? null;
        $this->dongy_sddv = $item["dongy_sddv"] ?? null;
        $this->loai_dvxn = $item["loai_dvxn"] ?? null;
        $this->txn_nhan_sp = $item["txn_nhan_sp"] ?? null;
        $this->txn_sp = $item["txn_sp"] ?? null;
        $this->txn_sp_khac = $item["txn_sp_khac"] ?? null;
        $this->txn_ngaynhan = $item["txn_ngaynhan"] ?? null;
        $this->txn_kq = $item["txn_kq"] ?? null;
        $this->loai_xnsl = $item["loai_xnsl"] ?? null;
        $this->kq_xnsl = $item["kq_xnsl"] ?? null;
        $this->kq_xn_knkt = $item["kq_xn_knkt"] ?? null;
        $this->tinh_cscg = $item["tinh_cscg"] ?? null;
        $this->ma_cscg = $item["ma_cscg"] ?? null;
        $this->ten_cscg_khac = $item["ten_cscg_khac"] ?? null;
        $this->ngay_dk_sddv = $item["ngay_dk_sddv"] ?? null;
        $this->tinh_cs_xnkd = $item["tinh_cs_xnkd"] ?? null;
        $this->ma_cs_xnkd = $item["ma_cs_xnkd"] ?? null;
        $this->ten_cs_xnkd_khac = $item["ten_cs_xnkd_khac"] ?? null;
        $this->ma_xnkd_hiv = $item["ma_xnkd_hiv"] ?? null;
        $this->ngay_khang_dinh = $item["ngay_khang_dinh"] ?? null;
        $this->ngay_xnkd = $item["ngay_xnkd"] ?? null;
        $this->ngay_nhan_kqkd_hiv = $item["ngay_nhan_kqkd_hiv"] ?? null;
        $this->ngay_nhan_kq_xnkd = $item["ngay_nhan_kq_xnkd"] ?? null;
        $this->loai_xnkd_hiv = $item["loai_xnkd_hiv"] ?? null;
        $this->kq_xnkd_hiv = $item["kq_xnkd_hiv"] ?? null;
        $this->ngay_tv_sauxn = $item["ngay_tv_sauxn"] ?? null;
        $this->nvtv_sauxn = $item["nvtv_sauxn"] ?? null;
        $this->ten_nvtv_sauxn = $item["ten_nvtv_sauxn"] ?? null;
        $this->sangloc_prep = $item["sangloc_prep"] ?? null;
        $this->du_tc_prep = $item["du_tc_prep"] ?? null;
        $this->dongy_prep = $item["dongy_prep"] ?? null;
        $this->lydo_ko_prep = $item["lydo_ko_prep"] ?? null;
        $this->ngay_prep = $item["ngay_prep"] ?? null;
        $this->ma_prep = $item["ma_prep"] ?? null;
        $this->tinh_cs_prep = $item["tinh_cs_prep"] ?? null;
        $this->ma_cs_prep = $item["ma_cs_prep"] ?? null;
        $this->cs_prep_khac = $item["cs_prep_khac"] ?? null;
        $this->dv_duphong = $item["dv_duphong"] ?? null;
        $this->dongy_npep = $item["dongy_npep"] ?? null;
        $this->lydo_ko_npep = $item["lydo_ko_npep"] ?? null;
        $this->ngay_npep = $item["ngay_npep"] ?? null;
        $this->ma_npep = $item["ma_npep"] ?? null;
        $this->cs_npep = $item["cs_npep"] ?? null;
        $this->dv_duphong_khac = $item["dv_duphong_khac"] ?? null;
        $this->dongy_arv = $item["dongy_arv"] ?? null;
        $this->lydo_ko_arv = $item["lydo_ko_arv"] ?? null;
        $this->tinh_cs_arv = $item["tinh_cs_arv"] ?? null;
        $this->ma_cs_arv = $item["ma_cs_arv"] ?? null;
        $this->ten_cs_arv_khac = $item["ten_cs_arv_khac"] ?? null;
        $this->ngay_arv = $item["ngay_arv"] ?? null;
        $this->ma_arv = $item["ma_arv"] ?? null;
        $this->ngay_gn_duytri_dt = $item["ngay_gn_duytri_dt"] ?? null;
        $this->kq_duytri_dt = $item["kq_duytri_dt"] ?? null;
    }

    /**
     * @param mixed $model
     * @return mixed
     */
    public function Post($model)
    {
        $this->Insert($model);
    }

    /**
     *
     * @param mixed $model
     * @return mixed
     */
    public function Put($model)
    {
        $where = "`trans_id`= '{$model["trans_id"]}'";
        return $this->Update($model, $where);

    }

    /**
     *
     * @param mixed $id
     * @return mixed
     */
    public function Delete($id)
    {
        return $this->DeleteDB("`trans_id`= '{$id}'");
    }

    /**
     *
     * @param mixed $id
     * @return mixed
     */
    public function GetById($id)
    {
        return $this->SelectRow("`trans_id`= '{$id}'");
    }

    public static function ToSelect()
    {
    }

    /**
     *
     * @param mixed $name
     * @param mixed $total
     * @param mixed $indexPage
     * @param mixed $pageNumber
     * @return mixed
     */
    public function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10)
    {
    }

}