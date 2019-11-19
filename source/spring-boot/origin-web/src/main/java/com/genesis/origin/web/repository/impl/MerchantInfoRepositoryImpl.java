package com.genesis.origin.web.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.genesis.origin.web.domain.entity.MerchantInfo;
import com.genesis.origin.web.mapper.MerchantInfoMapper;
import com.genesis.origin.web.repository.MerchantInfoRepository;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author KG
 * @since 2019-11-19
 */
@Service
public class MerchantInfoRepositoryImpl extends ServiceImpl<MerchantInfoMapper, MerchantInfo> implements MerchantInfoRepository {

}
