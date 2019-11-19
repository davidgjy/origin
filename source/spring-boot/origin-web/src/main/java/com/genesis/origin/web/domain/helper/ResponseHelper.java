package com.genesis.origin.web.domain.helper;

import com.genesis.origin.web.domain.response.BaseResponse;

/**
 * @author: KG
 * @description:
 * @date: Created in 2:48 PM 2019/7/8
 * @modified by:
 */

public class ResponseHelper {
    public static<T> void success(BaseResponse<T> response, T data) {
        response.setCode(BaseCode.SUCCESS.CODE);
        response.setMessage(BaseCode.SUCCESS.MSG);
        response.setData(data);
    }

    public static<T> void fail(BaseResponse<T> response, String code, String message) {
        response.setCode(code);
        response.setMessage(message);
    }

    public static<T> void failWithException(BaseResponse<T> response, String code, String message, String cause) {
        response.setCode(code);
        response.setMessage(message);
        response.setException(cause);
    }

    public static<T> void except(BaseResponse<T> response, String cause) {
        response.setCode(BaseCode.UNKNOWN_EXCEPTION.CODE);
        response.setMessage(BaseCode.UNKNOWN_EXCEPTION.MSG);
        response.setException(cause);
    }
}
