package com.entity.view;

import com.entity.JiajushangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 家具商品
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-01-30 18:18:25
 */
@TableName("jiajushangpin")
public class JiajushangpinView  extends JiajushangpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiajushangpinView(){
	}
 
 	public JiajushangpinView(JiajushangpinEntity jiajushangpinEntity){
 	try {
			BeanUtils.copyProperties(this, jiajushangpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
