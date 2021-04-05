package com.ga.musicapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.musicapp.dao.ArtistDao;
import com.ga.musicapp.model.Artist;

@Controller
public class ArtistController {

	@Autowired
	private Environment env;

	@Autowired
	private ArtistDao artistDao;

	
	@GetMapping("artist/index")
	public ModelAndView getArtists() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artist/index");
		
		var artists = artistDao.findAll();
		mv.addObject("artists", artists);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@GetMapping("artist/detail")
	public ModelAndView artistDetils(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artist/detail");
		
		Artist artist = artistDao.findById(id);
		mv.addObject("artist", artist);
		
		HomeController hc =  new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@GetMapping("artist/add")
	public ModelAndView addArtist() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artist/add");

		HomeController hc =  new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@PostMapping("artist/add")
	public String addArtist(Artist artist) {
		
		artistDao.save(artist);
		
		return "redirect:index";
	}
	
	
	//HTTP get request .. edit artist
	@GetMapping("artist/edit")
	public ModelAndView editArtist(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("artist/edit");
		
		Artist artist = artistDao.findById(id);
		mv.addObject("artist", artist);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@GetMapping("artist/delete")
	public String deleteArtist(@RequestParam int id) {
		
		artistDao.deleteById(id);
		return "redirect:index";
	}
}
