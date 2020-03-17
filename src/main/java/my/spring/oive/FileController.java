package my.spring.oive;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ViewDAO;
import vo.SelfIntroduceVO;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {
   @Autowired
   ServletContext context; // 객체를 넣어준다.
   @RequestMapping(value = "/self_introduce/upload")
   public String formFile() {
      return "file";
   }

   @RequestMapping(value = "/self_introduce/upload2")
   public ModelAndView saveFile(MultipartRequest mreq) {
      ModelAndView mav = new ModelAndView();
      List<MultipartFile> list = mreq.getFiles("mfile");
      String resultStr = "";
      mav.setViewName("file");
      for (MultipartFile mfile : list) {
         String fileName = mfile.getOriginalFilename();
         try {
            System.out.println("context의 최상위 폴더: "+context.getRealPath("/"));
            String fileInfo = context.getRealPath("/") + "resources/images/"+fileName;
            // context의 최상의 폴더를 뽑아준다.
            File f = new File(fileInfo);
            if (f.exists()) {
               resultStr += fileName + " : 파일이 이미 존재해요!!<br>";
            } else {
               mfile.transferTo(new File(fileInfo));
               resultStr += fileName + " : 파일이 저장되었어요!!<br>";
            }
         } catch (IOException e) {
            e.printStackTrace();
            resultStr += fileName + " : 오류가 발생했어요!!";            
         }
      }
      mav.addObject("msg", resultStr);   
      return mav;
   }
}