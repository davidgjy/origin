package com.genesis.origin.web.domain.helper;

/**
 * @author: KG
 * @description:
 * @date: Created in 2:33 PM 2019/7/8
 * @modified by:
 */

public interface BaseCode {
    interface SUCCESS {
        String CODE = "0";
        String MSG = "Success";
    }

    interface UNKNOWN_EXCEPTION {
        String CODE = "50000";
        String MSG = "Unknown Exception";
    }

    interface SYSTEM_BUSY {
        String CODE = "50001";
        String MSG = "System Busy";
    }
}
