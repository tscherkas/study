package org.fishingapp.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.fishingapp.models.*;

public class AddFish implements Action {

	private Fish fishBean;

	@Override
	public String execute() throws Exception {

		System.out.println("Hello from AddFish!");
		if (fishBean.getName() != null && !fishBean.getName().isEmpty()) {
			EntityManagerFactory entityManagerFactory;
			EntityManager manager;
			try {

				entityManagerFactory = Persistence.createEntityManagerFactory("org.hibernate.jpa");

				manager = entityManagerFactory.createEntityManager();
				manager.getTransaction().begin();
				manager.persist(fishBean);
				manager.getTransaction().commit();
				manager.close();
			} catch (Exception ex) {
				System.out.println("Error ГыгЫГЫГЫГЫ!!!");
				ex.printStackTrace();
				return ERROR;
			} catch (Throwable t) {
				// TODO: handle exception
				System.out.println("Ashibka! ГыгЫГЫГЫГЫ!!!\n" + t.getMessage());
				t.printStackTrace();
				return ERROR;
			}
			System.out.println("Bye from AddFish!");
		}
		return SUCCESS;
	}

	public Fish getFishBean() {
		return fishBean;
	}

	public void setFishBean(Fish fishBean) {
		this.fishBean = fishBean;
	}

}
