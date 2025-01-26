package com.dao;

import com.entity.DiscussjiajushangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjiajushangpinVO;
import com.entity.view.DiscussjiajushangpinView;


/**
 * 家具商品评论表
 * 
 * @author 
 * @email 
 * @date 2023-01-30 18:18:25
 */
public interface DiscussjiajushangpinDao extends BaseMapper<DiscussjiajushangpinEntity> {
	
	List<DiscussjiajushangpinVO> selectListVO(@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);
	
	DiscussjiajushangpinVO selectVO(@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);
	
	List<DiscussjiajushangpinView> selectListView(@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);

	List<DiscussjiajushangpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);
	
	DiscussjiajushangpinView selectView(@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);
	

}
