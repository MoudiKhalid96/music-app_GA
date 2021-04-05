package com.ga.musicapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.musicapp.model.Artist;

public interface ArtistDao extends CrudRepository<Artist, Integer>{

	Artist findById(int id);
}
