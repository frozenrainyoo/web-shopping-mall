package store.dao;

import java.util.List;

import store.logic.Category;

public interface CategoryDao {
	List<Category> findAllCategory();
	List<Category> findAllCategory(int parent);
	List<Category> findAllDescendant(int parentId);
	List<Category> getPath(int category);
	
	void entry(Category category);
	void delete(int id);
	Category get(int id);
	void update(Category category);
}
