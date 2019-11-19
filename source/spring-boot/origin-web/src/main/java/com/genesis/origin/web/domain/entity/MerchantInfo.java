package com.genesis.origin.web.domain.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDate;
import com.baomidou.mybatisplus.annotation.TableId;
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
public class MerchantInfo implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String name;

    private String merchantNo;

    /**
     * 法人代表
     */
    private String legalPerson;

    /**
     * 法人身份证
     */
    private String idCard;

    /**
     * 门店管理员
     */
    private String admin;

    private String mobile;

    private String telephone;

    /**
     * 门店性质1 4S店  2 快修  3 综修厂  4 美容店
     */
    private Integer serviceType;

    /**
     * 门店评分eg: 5.0分
     */
    private Double score;

    /**
     * 门店来源1 自营  2 连锁  3 加盟
     */
    private Integer shopSource;

    private String address;

    /**
     * 总计购买人数
     */
    private Integer sumBought;

    /**
     * 支付方式(1: 优惠券 2: 支付宝)
     */
    private Integer payType;

    /**
     * 是否支持优惠券0 否  1 是
     */
    private Boolean isCouponSupport;

    /**
     * 纳税识别码
     */
    private String taxCode;

    /**
     * 银行账号
     */
    private String bankAccount;

    /**
     * 普票税点
     */
    private String generalTaxPoint;

    /**
     * 专票税点
     */
    private String specialTaxPoint;

    /**
     * 主营范围
     */
    private String businessScope;

    /**
     * 营业开始时间
     */
    private String openTime;

    /**
     * 营业结束时间
     */
    private String closeTime;

    private String email;

    private String qq;

    /**
     * 商户状态 1:待审核,2:审核通过.\r\n3:审核不通过4：修改待审核 5：下架待审核
     */
    private String status;

    /**
     * 地址经度值
     */
    private String longitude;

    /**
     * 地址纬度值
     */
    private String latitude;

    /**
     * 证书照片(三证合一)
     */
    private String certificate;

    /**
     * 门店图片地址(门头照)
     */
    private String thumbNail;

    /**
     * 行政区域ID
     */
    private Integer chinaRegionId;

    /**
     * 机构码表ID
     */
    private Integer secId;

    /**
     * 门店上下架状态（0：上架，1：下架）
     */
    private String storeStatus;

    /**
     * 开户行
     */
    private String bankDeposit;

    /**
     * 客户评分
     */
    private Double customerScore;

    /**
     * 上级门店id
     */
    private Integer parentMerchantId;

    /**
     * 商户创建日期
     */
    private LocalDate createDate;

    /**
     * 商户修改日期
     */
    private LocalDate lastUpdate;


}
