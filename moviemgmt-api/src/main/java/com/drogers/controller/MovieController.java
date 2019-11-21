package com.drogers.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.drogers.model.domain.Movie;
import com.drogers.repository.MovieRepository;

@CrossOrigin(origins="*")
@RestController
public class MovieController {
	
	@Autowired
	private MovieRepository movieRepository;
	
	@RequestMapping(value = "/movies", method = RequestMethod.GET, produces = "application/json")
	public List<Movie> getMovies(){
		return (List<Movie>)movieRepository.findAll();
	}
	
}
