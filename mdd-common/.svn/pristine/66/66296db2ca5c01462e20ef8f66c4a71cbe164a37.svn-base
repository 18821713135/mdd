package com.mdd.common.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

/**
 * 邮件发送工具类
 * 
 * @author CH
 *
 */
public class MailUtils {
	/**
	 * 连接邮件服务器的用户名和密码
	 */
	private static final String USERNAME = "18821713029@163.com";
	private static final String PASSWORD = "123qwe";
	private static final String HOST = "smtp.163.com";

	/**
	 * 发送邮件
	 * 
	 * @param to
	 *            给谁发邮件
	 * @param code
	 *            激活码
	 * @throws MessagingException
	 * @throws AddressException
	 */
	public static void sendMail(String to, String code) throws Exception {
		Properties prop = System.getProperties();// 获取系统属性
		prop.setProperty("mail.smtp.host", HOST);// 设置邮件服务器
		prop.setProperty("mail.smtp.auth", "true");// 打开认证

		Session session = Session.getInstance(prop, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(USERNAME, PASSWORD);
			}
		});
		// 创建邮件对象
		Message message = new MimeMessage(session);
		// 设置发件人
		String nick = MimeUtility.encodeText("买多多集团");
		message.setFrom(new InternetAddress(nick + "<" + USERNAME + ">"));
		// 设置收件人
		message.setRecipient(RecipientType.TO, new InternetAddress(to));
		// 设置邮件主题
		message.setSubject("来自买多多购物商城的激活邮件");
		// 设置正文
		message.setContent("<h1>来自买多多购物商城的激活邮件,请点击：</h1><a href='http://www.baidu.com'>激活我没有做，啊哈哈哈哈哈哈!</a>",
				"text/html;charset=utf-8");
		// 发送邮件
		Transport.send(message);
	}
}
