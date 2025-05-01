package app.steps.dao;

import java.util.List;

import app.steps.model.User;

public interface UserDao {

	public User getUserById(int id);
	
	public void saveUser(User user);
	
	public void editUser(User user);
	
	public List<User> getAllUsers();
	
	public void deleteUser(int id);
	
}
