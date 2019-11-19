package com.genesis.origin.web.service.impl;

import com.genesis.origin.web.domain.entity.MerchantInfo;
import com.genesis.origin.web.service.MerchantService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : KG
 * description:
 * create date: 4:25 PM 2019/11/19
 * modified by:
 */
@Service
public class MerchantServiceImpl implements MerchantService {
    @Override
    public List<MerchantInfo> getMerchantsByUserName(String userName) {
        return null;
    }
}
