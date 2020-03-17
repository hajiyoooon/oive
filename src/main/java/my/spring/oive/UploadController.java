package my.spring.oive;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import dao.UploadDAO;
import vo.FileVO;
import vo.UserVO;

@Controller
public class UploadController {
	@Autowired
	ServletContext context; 
	
	@Autowired
	UploadDAO uploadDAO;
	
	@Autowired
	HttpSession httpSession;
	
	
	public String createFilePath(String userId) {
		return context.getRealPath("/") + "resources/" + userId;
	}
	
	@RequestMapping(value="upload", method = RequestMethod.GET,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public String uploadFile(FileVO vo, Model model) {	
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
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
			}
			
		} catch(IOException e) {
			e.printStackTrace();
			msg = "파일 저장에 실패하였습니다.";
		}


	    return String.format("{'msg':'%s'", msg);
	}
	
	//TODO :파일 다운로드 기능 추가
	@RequestMapping(value="/download")
	public void download(FileVO vo) {
		vo.setUserId(((UserVO)httpSession.getAttribute("user")).getUserId());
		String filepath = createFilePath(vo.getUserId());
		byte[] bytes = FileCopyUtils.copyToByteArray(filepath);

		출처: https://note.espriter.net/1227 [espriter]
		
	}
	
	
	//TODO : 파일 리스트 출력 추가
	@RequestMapping(value="/filebox", produces="application/json; charset=utf-8")
	@ResponseBody
	public List<FileVO> getFilelist() {
		return uploadDAO.selectFileList();
	}
	
	
	
}
