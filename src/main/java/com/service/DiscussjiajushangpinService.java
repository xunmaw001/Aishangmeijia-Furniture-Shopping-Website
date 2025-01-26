package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjiajushangpinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjiajushangpinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjiajushangpinView;


/**
 * 家具商品评论表
 *
 * @author 
 * @email 
 * @date 2023-01-30 18:18:25
 */
public interface DiscussjiajushangpinService extends IService<DiscussjiajushangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjiajushangpinVO> selectListVO(Wrapper<DiscussjiajushangpinEntity> wrapper);
   	
   	DiscussjiajushangpinVO selectVO(@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);
   	
   	List<DiscussjiajushangpinView> selectListView(Wrapper<DiscussjiajushangpinEntity> wrapper);
   	
   	DiscussjiajushangpinView selectView(@Param("ew") Wrapper<DiscussjiajushangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjiajushangpinEntity> wrapper);
   	

}

