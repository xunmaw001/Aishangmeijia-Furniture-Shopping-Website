package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiajushangpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiajushangpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiajushangpinView;


/**
 * 家具商品
 *
 * @author 
 * @email 
 * @date 2023-01-30 18:18:25
 */
public interface JiajushangpinService extends IService<JiajushangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiajushangpinVO> selectListVO(Wrapper<JiajushangpinEntity> wrapper);
   	
   	JiajushangpinVO selectVO(@Param("ew") Wrapper<JiajushangpinEntity> wrapper);
   	
   	List<JiajushangpinView> selectListView(Wrapper<JiajushangpinEntity> wrapper);
   	
   	JiajushangpinView selectView(@Param("ew") Wrapper<JiajushangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiajushangpinEntity> wrapper);
   	

}

