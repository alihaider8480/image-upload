package controller;

import java.io.*;
import java.nio.file.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController 
{
	private int maxUploadSizeInMb = 10 * 1024 * 1024; // 10 MB
    //private static String UPLOADED_FOLDER = "D://Apps_Spring//My tutorials//Spring-Boot-File-Upload//static//images//";
    private static String UPLOADED_FOLDER = "C://Users//Johny Dev PC//workspace//imageu//src//main//webapp//static//images//";
    
    private String image;

    

    @RequestMapping("/")
    public String index() {
        return "index"; 
    }
    
    @GetMapping("/ima")
    public String images() {  
    	return "images";  
    	}
    
    @RequestMapping("/upload")
    public ModelAndView singleFileUpload(@RequestParam("file") MultipartFile file) {
        ModelAndView mv = new ModelAndView();
        try {
            // Get the image and attempt to save it on the disk
        	
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);
            image = file.getOriginalFilename();
            mv.addObject("image", image);
        } catch (IOException e) {
           System.out.println(e);
        }

        mv.setViewName("images");

        return mv;
    }

}
