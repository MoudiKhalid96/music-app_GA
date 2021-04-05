package com.ga.musicapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.musicapp.dao.ArtistDao;
import com.ga.musicapp.dao.SongDao;
import com.ga.musicapp.model.Song;

@Controller
public class SongController {
	
	@Autowired
	private Environment env;
	
	@Autowired 
	private SongDao songDao;
	
	@Autowired 
	private ArtistDao artistDao;
	
	@GetMapping("song/index")
	public ModelAndView getSongs() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("song/index");
		
		
		var songs = songDao.findAll();
		mv.addObject("songs", songs);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@GetMapping("song/add")
	public ModelAndView addSong() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("song/add");
		
		var artists = artistDao.findAll();
		mv.addObject("artists", artists);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@PostMapping("song/add")
	public String addSong(Song song) {
		
		songDao.save(song);
		
		return "redirect:index";
	}
	
	@GetMapping("song/edit")
	public ModelAndView editSong(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("song/edit");
		
		Song song = songDao.findById(id);
		mv.addObject("song", song);
		
		var artists = artistDao.findAll();
		mv.addObject("artists", artists);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	
	@GetMapping("song/detail")
	public ModelAndView songDetails(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("song/detail");
		
		Song song = songDao.findById(id);
		mv.addObject("song", song);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		
		return mv;
	}
	
	
	@GetMapping("song/delete")
	public String deleteSong(Song song) {
		songDao.delete(song);
		
		return "redirect:index";
	}
}
