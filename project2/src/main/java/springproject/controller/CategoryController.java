package springproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springproject.model.Category;
import springproject.repository.CategoryRepository;

@Controller
public class CategoryController {

	@Autowired
	CategoryRepository cr ;
	
	@RequestMapping("/categories")
	public String show_category( Model model)
	{
		
		List<Category> ct =cr.findAll(Sort.by(Sort.Direction.ASC,"id"));
		model.addAttribute("categories", ct);
		
		return"categories";
	}
	
	@RequestMapping("/addcategory")
	public String add_category()
	{
		
		return"newcategoryform";
	}
	
	@PostMapping("/newcategory")
	public String newcategory(@ModelAttribute Category ct  )
	{	
		cr.save(ct);
		return"redirect:/categories";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam int id)
	{
		cr.deleteById(id);
		return"redirect:/categories";
	}
	
	@RequestMapping("/update")
	public String update(int id , Model model )
	{
		Category ct =cr.findById(id).orElse(null);
		model.addAttribute("category", ct);
		return"newcategoryform";
	}
	
}
