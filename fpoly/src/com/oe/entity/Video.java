package com.oe.entity;

import java.io.Serializable;
import javax.persistence.*;


@Entity
@Table(name="Video")
@NamedQuery(name="Video.findAll", query="SELECT v FROM Video v")
public class Video implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Id")
	private String id;

	@Column(name="Active")
	private boolean active;

	@Column(name="Descriptionn")
	private String descriptionn;

	private String img;

	@Column(name="Poster")
	private String poster;

	@Column(name="Titile")
	private String titile;

	@Column(name="Views")
	private int views;

	public Video() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public boolean getActive() {
		return this.active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getDescriptionn() {
		return this.descriptionn;
	}

	public void setDescriptionn(String descriptionn) {
		this.descriptionn = descriptionn;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPoster() {
		return this.poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getTitile() {
		return this.titile;
	}

	public void setTitile(String titile) {
		this.titile = titile;
	}

	public int getViews() {
		return this.views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public Video(String id, boolean active, String descriptionn, String img, String poster, String titile, int views) {
		super();
		this.id = id;
		this.active = active;
		this.descriptionn = descriptionn;
		this.img = img;
		this.poster = poster;
		this.titile = titile;
		this.views = views;
	}
}