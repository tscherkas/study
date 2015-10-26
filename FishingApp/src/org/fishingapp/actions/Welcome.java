package org.fishingapp.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.persistence.Persistence;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.fishingapp.models.*;
import org.hibernate.Criteria;
import org.hibernate.Session;
public class Welcome implements Action {

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Hello!!!!!ooooo!");
		
		List<Fish> fishsList;
		EntityManagerFactory entityManagerFactory;
		EntityManager manager;
		try{
			
			entityManagerFactory = Persistence.createEntityManagerFactory("org.hibernate.jpa");

			manager = entityManagerFactory.createEntityManager();
			manager.getTransaction().begin();
			String querry = "FROM Fish";
			fishsList = manager.createQuery(querry).getResultList();
			manager.getTransaction().commit();
			manager.close();
		}catch(Exception ex)
		{
			System.out.println("Error ГыгЫГЫГЫГЫ!!!");
			ex.printStackTrace();
			return ERROR;
		}
		catch (Throwable t) {
			// TODO: handle exception
			System.out.println("Ashibka! ГыгЫГЫГЫГЫ!!!\n"+t.getMessage());
			t.printStackTrace();
			return ERROR;
		}
		ValueStack stack = ActionContext.getContext().getValueStack();
		Map<String, Object> context = new HashMap<String, Object>();
		context.put("fishsList", fishsList);
		stack.push(context);
		return SUCCESS;
	}

}
