package com.genesis.origin.web.service;

import com.genesis.origin.web.domain.entity.MerchantInfo;

import java.util.List;

/**
 * @author : KG
 * description:
 * create date: 4:24 PM 2019/11/19
 * modified by:
 */

public interface MerchantService {
    List<MerchantInfo> getMerchantsByUserName(String userName);
}
