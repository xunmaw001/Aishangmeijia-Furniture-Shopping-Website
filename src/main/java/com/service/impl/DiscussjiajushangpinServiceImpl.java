package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussjiajushangpinDao;
import com.entity.DiscussjiajushangpinEntity;
import com.service.DiscussjiajushangpinService;
import com.entity.vo.DiscussjiajushangpinVO;
import com.entity.view.DiscussjiajushangpinView;

@Service("discussjiajushangpinService")
public class DiscussjiajushangpinServiceImpl extends ServiceImpl<DiscussjiajushangpinDao, DiscussjiajushangpinEntity> implements DiscussjiajushangpinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussjiajushangpinEntity> page = this.selectPage(
                new Query<DiscussjiajushangpinEntity>(params).getPage(),
                new EntityWrapper<DiscussjiajushangpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussjiajushangpinEntity> wrapper) {
		  Page<DiscussjiajushangpinView> page =new Query<DiscussjiajushangpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussjiajushangpinVO> selectListVO(Wrapper<DiscussjiajushangpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussjiajushangpinVO selectVO(Wrapper<DiscussjiajushangpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussjiajushangpinView> selectListView(Wrapper<DiscussjiajushangpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussjiajushangpinView selectView(Wrapper<DiscussjiajushangpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
