<?php

namespace Model;

use Common\Common;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class ExcelConfig
{

    // danh sách cot 
    static  public function GetCollums($num)
    {
        $numeric = $num % 26;
        $letter = chr(65 + $numeric);
        $num2 = intval($num / 26);
        if ($num2 > 0) {
            return self::GetCollums($num2 - 1) . $letter;
        } else {
            return $letter;
        }
    }
    static  public function GetCellName($col, $row)
    {
        $row = max($row, 1);
        $colName = self::GetCollums($col);
        return "{$colName}{$row}";
    }

    static  public function Export($data, $fileName)
    {
        $spreadsheet = new Spreadsheet();
        $spreadsheet->setActiveSheetIndex(0);
        $sheet0 = $spreadsheet->getActiveSheet();

        $styleArray = [
            'borders' => [
                'outline' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['rgb' => '000000'],
                ],
            ],
        ];
        $sheet0->getColumnDimension('A')->setAutoSize(true);
        $sheet0->getColumnDimension('B')->setAutoSize(true);
        $sheet0->getColumnDimension('C')->setAutoSize(true);
        $sheet0->getColumnDimension('D')->setAutoSize(true);
        $sheet0->getColumnDimension('E')->setAutoSize(true);
        $sheet0->getColumnDimension('F')->setAutoSize(true);
        foreach ($data as $row => $colums) {
            $colIndex = 0;
            foreach ($colums as  $value) {
                // echo $colIndex;
                $sheet0->getStyle(
                    ExcelConfig::GetCellName(
                        $colIndex,
                        $row + 1
                    )
                )->applyFromArray($styleArray);
                $sheet0->setCellValue(
                    ExcelConfig::GetCellName(
                        $colIndex,
                        $row + 1
                    ),
                    $value
                );
                $colIndex++;
            }
        }



        $writer = IOFactory::createWriter($spreadsheet, "Xlsx");
        $writer->save($fileName);
        Common::toUrl("/{$fileName}");
    }
    static  public function BangThongKeHangCangTin($data, $fileName, $rowbody)
    {
        $spreadsheet = new Spreadsheet();
        $spreadsheet->setActiveSheetIndex(0);
        $spreadsheet->getDefaultStyle()->getFont()->setSize(14);
        $sheet0 = $spreadsheet->getActiveSheet();
        $styleArray = [
            'borders' => [
                'outline' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['rgb' => '000000'],
                ],
            ],
        ];

        // setBold 
        $sheet0->getColumnDimension('C')->setAutoSize(true);
        $sheet0->getColumnDimension('B')->setAutoSize(true);
        $sheet0->getColumnDimension('D')->setAutoSize(true);
        $sheet0->getColumnDimension('E')->setAutoSize(true);
        $sheet0->getColumnDimension('F')->setAutoSize(true);
        $alignment_center = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER;
        $sheet0->getStyle('A3:H3')->getAlignment()->setHorizontal($alignment_center);
        $alignment_center = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER;
        $sheet0->getStyle('A1:C1')->getAlignment()->setHorizontal($alignment_center);
        $alignment_center = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER;
        $sheet0->getStyle('A2:C2')->getAlignment()->setHorizontal($alignment_center);
        $sheet0->getStyle('A3:H3')->getFont()->setSize(24);

        $alignment_center = \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER;
        $sheet0->getStyle('A4:H4')->getAlignment()->setHorizontal($alignment_center);
        $sheet0->mergeCells('A1:D1');
        $sheet0->mergeCells('A2:D2');
        $sheet0->mergeCells('A3:I3');
        $sheet0->mergeCells('A4:I4');
        $sheet0->getStyle('A5:I5')->getFont()->setBold(true);
        $sheet0->getStyle('A3:I3')->getFont()->setBold(true);
        foreach ($data as $row => $colums) {
            $colIndex = 0;
            foreach ($colums as  $value) {
                // echo $colIndex;
                if ($row > 3 && $row < $rowbody) {
                    $sheet0->getStyle(
                        ExcelConfig::GetCellName(
                            $colIndex,
                            $row + 1
                        )
                    )->applyFromArray($styleArray);
                }
                $sheet0->setCellValue(
                    ExcelConfig::GetCellName(
                        $colIndex,
                        $row + 1
                    ),
                    $value
                );
                $colIndex++;
            }
        }
        $writer = IOFactory::createWriter($spreadsheet, "Xlsx");
        $writer->save($fileName);
        $time = time();
        Common::toUrl("/{$fileName}?v={$time}");
    }
}
