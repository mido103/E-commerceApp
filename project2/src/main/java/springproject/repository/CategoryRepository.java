package springproject.repository;




import org.springframework.data.jpa.repository.JpaRepository;

import springproject.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
