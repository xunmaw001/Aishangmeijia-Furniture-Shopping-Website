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


import com.dao.JiajushangpinDao;
import com.entity.JiajushangpinEntity;
import com.service.JiajushangpinService;
import com.entity.vo.JiajushangpinVO;
import com.entity.view.JiajushangpinView;

@Service("jiajushangpinService")
public class JiajushangpinServiceImpl extends ServiceImpl<JiajushangpinDao, JiajushangpinEntity> implements JiajushangpinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiajushangpinEntity> page = this.selectPage(
                new Query<JiajushangpinEntity>(params).getPage(),
                new EntityWrapper<JiajushangpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiajushangpinEntity> wrapper) {
		  Page<JiajushangpinView> page =new Query<JiajushangpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiajushangpinVO> selectListVO(Wrapper<JiajushangpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiajushangpinVO selectVO(Wrapper<JiajushangpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiajushangpinView> selectListView(Wrapper<JiajushangpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiajushangpinView selectView(Wrapper<JiajushangpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
