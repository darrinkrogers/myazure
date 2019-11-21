package com.drogers.repository;

import org.springframework.data.repository.CrudRepository;

import com.drogers.model.domain.Movie;

public interface MovieRepository extends CrudRepository<Movie, Integer> {}
