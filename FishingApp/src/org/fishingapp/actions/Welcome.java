package org.fishingapp.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

import java.util.HashMap;
import java.util.Map;

import org.fishingapp.models.*;

public class Welcome implements Action{

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Hello!!!!!ooooo!");
		Fish f = new Fish();
		
		f.setId(1);
		f.setName("yaz\'");
		f.setDescription("Lorem ipsum");
		f.setPrice(2.97);
		ValueStack stack = ActionContext.getContext().getValueStack();
	    Map<String, Object> context = new HashMap<String, Object>();
	    context.put("fishhh", f);
	    stack.push(context);
		return SUCCESS;
	}
	
}
