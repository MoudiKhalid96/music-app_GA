package com.ga.musicapp.dao;


import org.springframework.data.repository.CrudRepository;

import com.ga.musicapp.model.Song;

public interface SongDao extends CrudRepository<Song, Integer>{

	Song findById(int id);
}
