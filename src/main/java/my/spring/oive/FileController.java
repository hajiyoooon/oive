package my.spring.oive;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UploadDAO;
import dao.WriteDAO;
import vo.FileVO;
import vo.UserVO;

@Controller
public class FileController {
	@Autowired
	ServletContext context; 
	
	@Autowired
	UploadDAO uploadDAO;
	
	@Autowired
	HttpSession httpSession;
	
	
	public String createFilePath(String userId) {
		return context.getRealPath("/") + "resources/" + userId;
	}
	
	@RequestMapping(value="upload", method = RequestMethod.GET)
	public void upload(Model model) {
		model.addAttribute("filelist",uploadDAO.selectFileList());
	}
	
	@RequestMapping(value="upload", method = RequestMethod.POST,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public String uploadFile(FileVO vo, Model model) {	
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
		vo.setFileName(vo.getUploadFile().getOriginalFilename());
		
		System.out.println(vo.getUserId());
		
		String filepath = createFilePath(vo.getUserId());
		System.out.println("파일 디렉토리 : " + filepath);
		
		File dir = new File(filepath);

		
		if(!dir.isDirectory()) {
			dir.mkdir();
		}
		
		String filename = filepath + "/" + vo.getFileName();
		System.out.println("파일명 : " + filename);
		
		String msg = "";
		try{
			File file = new File(filename);
			if(file.exists()) {
				msg = "이미 존재하는 파일입니다.";
			}
			else {
				vo.getUploadFile().transferTo(file);
				msg ="파일이 저장되었습니다.";
				uploadDAO.uploadFile(vo);
			}
			
		} catch(IOException e) {
			e.printStackTrace();
			msg = "파일 저장에 실패하였습니다.";
		}


	    return String.format("{'msg':'%s'}", msg);
	}

	@RequestMapping(value="/download")
	@ResponseBody
	public void download(FileVO vo, HttpServletRequest request, HttpServletResponse response) {
		//https://private.tistory.com/60 참고해 작성하였음
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
		String filepath = createFilePath(vo.getUserId());
		String filename = vo.getFileName();
		System.out.println(filename);
		File file = new File(filepath + "/" + filename);
		
		
		boolean possible = true;;
        if(!file.exists()) possible = false;
		String client = request.getHeader("User-Agent");
                
        if(possible) {
            //파일 다운로드 헤더 지정 

            response.reset();
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Description", filename);
        	try(OutputStream os = response.getOutputStream();
        		InputStream in = new FileInputStream(file);) {
        		
	            if (client.indexOf("MSIE") != -1) {
	                response.setHeader("Content-Disposition", "attachment; filename=\""
	                        + java.net.URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
	                // IE 11 이상.
	            } else if (client.indexOf("Trident") != -1) {
	                response.setHeader("Content-Disposition", "attachment; filename=\""
	                        + java.net.URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
	            } else {
	                // 한글 파일명 처리
	                response.setHeader("Content-Disposition",
	                        "attachment; filename=\"" + new String(filename.getBytes("UTF-8"), "ISO8859_1") + "\"");
	                response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
	            }
	            response.setHeader("Content-Length", "" + file.length());
	            
	            byte b[] = new byte[(int) file.length()];
	            int leng = 0;
	            while ((leng = in.read(b)) > 0) {
	                os.write(b, 0, leng);
	            }
        	}catch(UnsupportedEncodingException e) {
        		e.printStackTrace();
        		response.setContentType("application/json;charset=UTF-8");
        	}catch (IOException e) {
        		e.printStackTrace();
        		response.setContentType("application/json;charset=UTF-8");
        		// TODO : 파일 다운로드에 실패할 경우 어떤 응답을 출력할 지 결정
  			}
        }
        else {
        	response.setContentType("application/json;charset=UTF-8");
        }
	}
}
