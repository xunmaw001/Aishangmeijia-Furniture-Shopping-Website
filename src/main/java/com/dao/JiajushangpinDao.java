package com.dao;

import com.entity.JiajushangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiajushangpinVO;
import com.entity.view.JiajushangpinView;


/**
 * 家具商品
 * 
 * @author 
 * @email 
 * @date 2023-01-30 18:18:25
 */
public interface JiajushangpinDao extends BaseMapper<JiajushangpinEntity> {
	
	List<JiajushangpinVO> selectListVO(@Param("ew") Wrapper<JiajushangpinEntity> wrapper);
	
	JiajushangpinVO selectVO(@Param("ew") Wrapper<JiajushangpinEntity> wrapper);
	
	List<JiajushangpinView> selectListView(@Param("ew") Wrapper<JiajushangpinEntity> wrapper);

	List<JiajushangpinView> selectListView(Pagination page,@Param("ew") Wrapper<JiajushangpinEntity> wrapper);
	
	JiajushangpinView selectView(@Param("ew") Wrapper<JiajushangpinEntity> wrapper);
	

}
