/**   
 * @Title: AjaxUploadAction.java  
 * @Package com.momolela.web.user  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-6-14 下午3:58:29  
 * @version V1.0   
 */
package com.jingbaba.web.user;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.JSONUtil;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jingbaba.core.action.BaseAction;
import com.jingbaba.util.TmFileUtil;
import com.jingbaba.util.TzStringUtils;

/**
 * @ClassName: AjaxUploadAction
 * @Description: 
 * @author: momolela
 * @date 2016-6-14 下午3:58:29
 * 
 */
@Controller("ajaxUploadAction")
@Scope("prototype")
public class AjaxUploadAction extends BaseAction{

	private File bimg;
	private String bimgFileName; // xxxFileName
	private String bimgContentType; // xxxContentType
	private Integer namecount;

	public File getBimg() {
		return bimg;
	}

	public void setBimg(File bimg) {
		this.bimg = bimg;
	}

	public String getBimgFileName() {
		return bimgFileName;
	}

	public void setBimgFileName(String bimgFileName) {
		this.bimgFileName = bimgFileName;
	}

	public String getBimgContentType() {
		return bimgContentType;
	}

	public void setBimgContentType(String bimgContentType) {
		this.bimgContentType = bimgContentType;
	}
	
	public Integer getNamecount() {
		return namecount;
	}

	public void setNamecount(Integer namecount) {
		this.namecount = namecount;
	}

	/**
	 * 添加banner图片
	 * @return
	 */
	public String addGoodPic(){
		// ---------上传图片。
		HashMap<String, Object> map = new HashMap<String,Object>();
		//1：上传放入服务器，如何获取服务器的上传的路径
		String uploadPath = ServletActionContext.getServletContext().getRealPath("/images/good");
		//2：如果服务器上传路径不存在，就创建
		File dirPath = new File(uploadPath);
		if(!dirPath.exists()){
			dirPath.mkdirs();
		}
		//3:进行io流读写，将本地的图片上传到服务器的上传路基下
		//对上传文件的重命名
		int j = 0;
		setNamecount(j++);
		String newFileName = generateFileName(bimgFileName);
		//文件上传了 io也可以用FileUtils
		//建立文件上传的缓存读和写的流
		BufferedOutputStream outputStream =null;//reponse.getWriter(),它也是一个输出流.往浏览器输出的
		BufferedInputStream inputStream = null;
		try {
			//将文件开始输入流
			FileInputStream fis = new FileInputStream(bimg);
			inputStream = new BufferedInputStream(fis);
			//输出流
			FileOutputStream out = new FileOutputStream(new File(dirPath,newFileName));
			outputStream = new BufferedOutputStream(out);
			//以多少开始读取文件的流 文件，
			byte[] buf = new byte[4096];
			int len = -1;
			while((len = inputStream.read(buf))!=-1){//读客户端的文件
				outputStream.write(buf, 0, len);//写入到服务器
			}
			map.put("name", newFileName);
			map.put("oldName", bimgFileName);
			map.put("url", "images/banner/"+newFileName);
			map.put("size", bimg.length());
			map.put("ext", TmFileUtil.getExtNoPoint(bimgFileName));
			map.put("type", bimgContentType);
			map.put("path", "images/banner");
			map.put("sizeString", TmFileUtil.countFileSize(bimg.length()));
			result = JSONUtil.serialize(map);
		} catch (Exception e) {
		} finally{
			try {
				if(outputStream!=null){
					outputStream.close();
				}
				if(inputStream!=null){
					inputStream.close();
				}
			} catch (Exception e2) {
			}
		}
		
		return "callback";
	}
	
	/**
	 * 将文件名按照时间来重新定义
	 * @param fileName
	 * @return
	 */
	private String generateFileName(String fileName){
		Integer i = getNamecount();
		if(TzStringUtils.isNotEmpty(fileName)){
			String ext = fileName.substring(fileName.lastIndexOf("."));
			String newFilName = i+ext;
			return newFilName;
		}else{
			return fileName;
		}
	}

}
