package com.genesis.origin.web.repository.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.genesis.origin.web.domain.entity.User;
import com.genesis.origin.web.mapper.UserMapper;
import com.genesis.origin.web.repository.UserRepository;
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
public class UserRepositoryImpl extends ServiceImpl<UserMapper, User> implements UserRepository {

}
