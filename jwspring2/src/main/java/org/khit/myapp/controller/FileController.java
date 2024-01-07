package org.khit.myapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FileController {
	
	@GetMapping("/file/upload")
	public String uploadForm() {
		return "/file/uploadform";
	}
	
	@PostMapping("/file/upload")
	public String uploadForm(MultipartFile filename, Model model) throws IllegalStateException, IOException {
		// 원본 파일 가져오기
		long fileSize = filename.getSize();
		String fileType = filename.getContentType();
		
		// log.info(originalFilename);
		log.info(fileSize + "B");
		log.info(fileType);
		
		// 서버에 저장
		String filepath = "/Users/rim-yeeun/sts/springworks/jwspring2/src/main/webapp/upload/";
		String savedFilename = filename.getOriginalFilename();
		// 파일이름 중복이 안되는 고유 ID 객체 생성
		UUID uuid = UUID.randomUUID();
		savedFilename = uuid.toString() + "_" + savedFilename;
		
		File file = new File(filepath + "\\" + savedFilename);
		filename.transferTo(file); // 서버 폴더에 저장
		model.addAttribute("filename", savedFilename);
		
		return "/file/uploadform";
	}

}
