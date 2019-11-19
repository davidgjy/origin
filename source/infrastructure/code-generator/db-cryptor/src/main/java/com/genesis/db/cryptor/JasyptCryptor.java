package com.genesis.db.cryptor;

/**
 * @author: KG
 * @description:
 * @date: Created in 9:34 AM 2019/8/31
 * @modified by:
 */

public class JasyptCryptor {
    public static void main(String[] args) {
        //加密
        System.out.println(JasyptUtil.encyptPwd(SaltConstants.MYSQL_SALT,"root"));
        System.out.println(JasyptUtil.encyptPwd(SaltConstants.MYSQL_SALT,"mysql"));

        //解密
        System.out.println(JasyptUtil.decyptPwd(SaltConstants.MYSQL_SALT,"Lmj6/pDkJG0FjnYfowfhKQ=="));
        System.out.println(JasyptUtil.decyptPwd(SaltConstants.MYSQL_SALT,"pUuB3jh48VJBqRmp3oSnVQ=="));
    }
}
