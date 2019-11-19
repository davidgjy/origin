package com.genesis.origin.web.domain.exception;

import org.apache.commons.codec.binary.StringUtils;

/**
 * @author: KG
 * @description: 业务错误码
 * @date: Created in 9:13 PM 2019/8/30
 * @modified by:
 */

public enum BizErrorCodeEnum implements ErrorCode {

    /** 未指明的异常 */
    UNSPECIFIED("500", "网络异常，请稍后再试"),
    NO_SERVICE("404", "网络异常, 服务器熔断"),

    // 基础错误
    BP_TYPE_NOT_EXISTS("9001", "BP_TYPE Not Exists"),
    DIVISOR_ZERO_ERROR("9002", "Divisor should not be zero"),

    // 数据库相关
    DB_ERROR_BW_EMP_ADD("1001", "BW Employee Insert Error"),

    // 文件相关
    FILE_ERROR_EXCEL_SHEET_READ("3000", "Excel Sheet Read Error"),

    // 流程相关
    NO_INITIAL_BP_ERROR("4000","BP data or parameter need to be created"),

    // 数据验证相关
    TEMP_NUM_NOT_DIGIT("5000", "Value is not a correct number"),
    TEMP_NUM_EXCEED_LENGTH("5001", "整数位数超过长度"),

    // 服务单元
    SERVICE_ACTUAL_PREDICT_ERROR("2000", "Actual Predict Error"),
    SERVICE_NO_PARAMETERS("2003", "No Parameters")
    ;

    /** 错误码 */
    private final String code;

    /** 描述 */
    private final String description;

    /**
     * @param code 错误码
     * @param description 描述
     */
    private BizErrorCodeEnum(final String code, final String description) {
        this.code = code;
        this.description = description;
    }

    /**
     * 根据编码查询枚举。
     *
     * @param code 编码。
     * @return 枚举。
     */
    public static BizErrorCodeEnum getByCode(String code) {
        for (BizErrorCodeEnum value : BizErrorCodeEnum.values()) {
            if (StringUtils.equals(code, value.getCode())) {
                return value;
            }
        }
        return UNSPECIFIED;
    }

    /**
     * 枚举是否包含此code
     * @param code 枚举code
     * @return 结果
     */
    public static Boolean contains(String code){
        for (BizErrorCodeEnum value : BizErrorCodeEnum.values()) {
            if (StringUtils.equals(code, value.getCode())) {
                return true;
            }
        }
        return  false;
    }

    @Override
    public String getCode() {
        return code;
    }

    @Override
    public String getDescription() {
        return description;
    }
}

