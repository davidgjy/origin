package com.genesis.origin.web.domain.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author KG
 * @since 2019-11-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class User implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * FK 商户ID
     */
    private Integer merchantId;

    /**
     * 用户名
     */
    private String username;

    /**
     * 加密后的密码
     */
    private String password;

    /**
     * 用户描述
     */
    private String description;

    /**
     * 用户是否有效
     */
    private Integer enabled;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 电话
     */
    private String telephone;

    /**
     * 手机
     */
    private String mobile;

    /**
     * 盐
     */
    private String salt;

    /**
     * 用户头像
     */
    private String thumbnail;

    /**
     * 用户种类 1 商户 2 后台管理人员
     */
    private Integer userType;

    private LocalDateTime createDate;

    private LocalDateTime lastUpdate;


}
