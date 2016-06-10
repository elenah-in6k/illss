package services;

import core.entity.dto.IllnessMatches;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by gaial on 10.06.2016.
 */
public class FileUtil {

    public static void writeIntoExcel(List<IllnessMatches> illnessesMatches) throws FileNotFoundException, IOException {
        String file=System.getProperty("user.dir")+"\\diagnostic.xls";
        Workbook book = new HSSFWorkbook();
        Sheet diagnosticSheet = book.createSheet("Результати діагностики");
        CellStyle cellStyle = book.createCellStyle();
        cellStyle.setWrapText(true);
        Row row = diagnosticSheet.createRow(0);
        Cell name = row.createCell(0);
        name.setCellValue("Назва хвороби");
        Cell matches = row.createCell(1);
        matches.setCellValue("Співпадіння");

        int i = 1;
        for (IllnessMatches illness : illnessesMatches) {
            Row rowNew = diagnosticSheet.createRow(i);
            Cell illnessName = rowNew.createCell(0);
            illnessName.setCellValue(illness.getIllness().getName());
            Cell illnessMatches = rowNew.createCell(1);
            illnessMatches.setCellValue(illness.getNumberMatches());
            i++;
        }

        diagnosticSheet.setColumnWidth(0, 20000);
        diagnosticSheet.autoSizeColumn(1);

        book.write(new FileOutputStream(file));
        book.close();
    }

}
