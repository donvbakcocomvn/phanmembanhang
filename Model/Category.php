<?php

namespace Model;

class Category extends \Model\Database
{

    public $catID;
    public $catName;
    public $Code;
    public $Note;
    public $parentCatID;
    public $banner;
    public $Public;
    public $Path;
    public $Link;
    public $Serial;

    function __construct($Cat = null)
    {
        //        khỏi tao đối tuong
        if ($Cat) {
            if (!is_array($Cat)) {
                $Cat = $this->CategoryByID($Cat, FALSE);
            }
            if ($Cat) {
                $this->catID = $Cat["catID"];
                $this->catName = $Cat["catName"];
                $this->Code = $Cat["Code"];
                $this->Note = $Cat["Note"];
                $this->parentCatID = $Cat["parentCatID"];
                $this->banner = $Cat["banner"];
                $this->Public = $Cat["Public"];
                $this->Path = $Cat["Path"];
                $this->Link = $Cat["Link"];
                $this->Serial = $Cat["Serial"];
            }
        }
        parent::__construct();
    }

    function getIDCategoryByParentID($Id, &$listCat)
    {
        //        FILO
        $a = $this->CategoryByID($Id);
        //        thêm vào đầu mảng
        array_unshift($listCat, $a);
        if ($a->parentCatID == 0) {
            return;
        }
        //            không thì trả lại path của cha cat hien tại
        return $this->getIDCategoryByParentID($a->parentCatID, $listCat);
    }

    function GetAllCategory($catId, &$danhMuc, $preTitle = null, $isshow = [1])
    {
        $DanhSachCon = $this->Categorys4IDParentArray($catId, $isshow);
        if ($DanhSachCon == null) {
            //            không có danh muc con
            return null;
        }
        if ($preTitle == null) {
            $preTitle = "--| ";
        }
        //        echo "có danh muc con";
        //            có danh muc con
        foreach ($DanhSachCon as $k => $dMuc) {
            $dMuc["catName"] = trim($preTitle . " " . $dMuc["catName"]);
            $danhMuc[] = $dMuc;
            $this->GetAllCategory($dMuc["catID"], $danhMuc, $preTitle . $preTitle);
        }
    }

    function getHotProduct()
    {
    }

    function Categorys()
    {
        return parent::Categorys();
    }

    function GetCategorys()
    {
        $sql = "SELECT * FROM `" . table_prefix . "categories` where `parentCatID` = 0 and `Public` = 1 order by `Serial` asc";
        $this->Query($sql);
        return $this->fetchAll();
    }

    function CategoryByID($ID, $isObj = true)
    {
        return parent::Category4Id($ID, $isObj);
    }

    function CategoryByCode($ID, $isObj = true)
    {
        return parent::Category4Code($ID, $isObj);
    }
    function getPathCategoryByID($Id)
    {
        $a = $this->CategoryByID($Id);
        return $a->Path;
    }

    function getAllParentCategoryByID($Id, &$path)
    {
        $a = $this->CategoryByID($Id);
        //            nếu là cha thì trả về path
        $path = BASE_DIR . $this->getPathCategoryByID($a->catID) . $path;
        if ($a->parentCatID == 0) {
            return;
        }
        //            không thì trả lại path của cha cat hien tại
        return $this->getAllParentCategoryByID($a->parentCatID, $path);
    }

    function getlinkCategoryByID($catID)
    {
        $path = "";
        $this->getAllParentCategoryByID($catID, $path);
        return $path;
    }

    function linkCurentCategory()
    {
        $path = "";
        $this->getAllParentCategoryByID($this->catID, $path);
        return $path;
    }

    function Categorys4IDParent($id)
    {
        return parent::Categorys4IDParent($id);
    }

    function UpdateCategory()
    {
        $ala = $cat->AllCategorys();
        if ($ala)
            foreach ($ala as $_cat) {
                $catm = new \Model\Category();
                $cat = $catm->Category4Id2Array($_cat->catID);
                $catobj = new \Model\Category($cat);
                $cat["Link"] = $catobj->linkCurentCategory();
                $catm->EditCategory($cat);
            }
    }

    function EditCategory($Category)
    {
        $Category["Path"] = $this->bodautv($Category["catName"]);
        return parent::EditCategory($Category);
    }

    function getCategoryFromPath($path)
    {
        $path = explode("/", $path);
        //        var_dump($path);
        $pathcat = end($path) != "" ? end($path) : $path[count($path) - 2];
        return $pathcat;
    }

    function Category4Path($Path, $isobj = true)
    {
        return parent::Category4Path($Path, $isobj);
    }

    function Breadcrumb($id)
    {
        $listCat = [];
        $a = [];
        $this->getIDCategoryByParentID($id, $listCat);
        if ($listCat)
            foreach ($listCat as $dem => $cat) {
                $a[$dem]["link"] = $cat->linkCurentCategory();
                $a[$dem]["title"] = $cat->catName;
            }
        return $a;
    }

    function checkDeleteCategory($CatsID, $username)
    {
        //        kiểm tra quyền có hợp lệ không

        $M_auth = new \Model\Authorities();
        $kt = $M_auth->getAuthDeleteCategoryMaster($_SESSION[QuanTri]["Username"]);
        if (!$kt) {
            $kt = $M_auth->getAuthDeleteCategory($_SESSION[QuanTri]["Username"]);
            if (!$kt) {
                return -201;
            }
            //        kiểm tra có danh mục con không?
            $kt = $this->Categorys4IDParent($CatsID);
            if ($kt) {
                return -202;
            }
            //        kiểm tra có Sản phẩm không?
            $Model_Products = new \Model\Products();
            $kt = $Model_Products->AllProductsByCatID($CatsID);
            if ($kt) {
                return -203;
            }
            return 1;
        }
        return 1;
    }

    function DeleteCategory($catId)
    {
        $kt = $this->checkDeleteCategory($catId, $_SESSION[QuanTri]["Username"]);
        if ($kt < 0) {
            return $kt;
        }
        return parent::DeleteCategory($catId);
    }

    public function GetProducts()
    {
        $p = new Products();
        $sum = 0;
        return $p->ProductsByCatID($this->catID, 1, 15, $sum);
    }

    function obj2Api()
    {
        $Cat["catID"] = $this->catID;
        $Cat["Code"] = $this->Code;
        $Cat["catName"] = $this->catName;
        $Cat["Note"] = $this->Note;
        $Cat["parentCatID"] = $this->parentCatID;
        $Cat["banner"] = $this->banner;
        $Cat["Public"] = $this->Public;
        $Cat["Path"] = $this->Path;
        $Cat["Link"] = $this->linkCurentCategory();
        $Cat["Serial"] = $this->Serial;
        return $Cat;
    }
}
