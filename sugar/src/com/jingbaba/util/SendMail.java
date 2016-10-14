/**   
 * @Title: SendMail.java  
 * @Package com.momolela.util  
 * @Description: TODO  
 * @author momolela   
 * @date 2016-5-30 下午10:33:11  
 * @version V1.0   
 */
package com.jingbaba.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import com.jingbaba.model.MyAuthenticator;
import com.jingbaba.model.User;

/**
 * @ClassName: SendMail
 * @Description: 
 * @author: momolela
 * @date 2016-5-30 下午10:33:11
 * 
 */
public class SendMail implements Runnable{

	private User user;
	private String flag;
	public void setUser(User u,String flag){
		this.user = u;
		this.flag = flag;
	}
	public void run() {
		Properties props = new Properties();
		props.setProperty("mail.smtp.host", "smtp.qq.com");
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.socketFactory.port", "465");

		String userName = "1083910359@qq.com";
		String emailpassword = "hfy520szj@";
		Authenticator authenticator = new MyAuthenticator(userName,emailpassword);

		javax.mail.Session session = javax.mail.Session.getDefaultInstance(props, authenticator);
		//session.setDebug(true);//可以从控制台看到信息

		try {
			Address from = new InternetAddress(userName);
			Address to = new InternetAddress(user.getEmail());

			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(from);
			if(flag=="register"){
				msg.setSubject("sugar家居商城注册邮件");
				msg.setContent(
						"恭喜您已经成功注册成为sugar的一员，你的账号是:" + user.getUsername()
								+ "\t你的密码为" + user.getPassword()
								+ "请妥善保管，忘记密码请联系管理员。QQ:1083910359",
						"text/html;charset=utf-8");
			}
			if(flag=="change"){
				msg.setSubject("sugar家居商城邮箱修改");
				msg.setContent(
						user.getUsername() + "恭喜您修改邮箱成功,您的新邮箱是:"
								+ user.getEmail()
								+ "\n记得忘记密码请联系管理员。QQ:1083910359",
						"text/html;charset=utf-8");
			}
			msg.setSentDate(new Date());
			msg.setRecipient(RecipientType.TO, to);
			Transport.send(msg);

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
