package springproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import springproject.model.User;



@Repository
public interface UserRepository extends JpaRepository<User,Integer> {

	User getByUsername(String username);
	
	@Query( nativeQuery = true, value = "select * from user where username=:user and password=:password and  role like :role")
	
		User findUserByRoleEndsWith(@Param("user") String username ,@Param("password") String password, @Param("role")String role);
		
		
		
	
	
	
	
	
	
	
	
	
}
