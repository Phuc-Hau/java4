package com.oe.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Users database table.
 * 
 */
@Entity
@Table(name="Users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Basic(optional = false)
	@Column(name="Id" , unique = true , nullable = false)
	private String id;

	@Column(name="Adminn")
	private boolean adminn;

	@Column(name="Email")
	private String email;

	@Column(name="Fullname")
	private String fullname;

	@Column(name="Passwordd")
	private String passwordd;
	
	//bi-directional many-to-one association to Favorite
	@OneToMany(mappedBy="user")
	private List<Favorite> favorites;

	//bi-directional many-to-one association to Share
	@OneToMany(mappedBy="user")
	private List<Share> shares;

	public User() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public boolean getAdminn() {
		return this.adminn;
	}

	public void setAdminn(boolean adminn) {
		this.adminn = adminn;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPasswordd() {
		return this.passwordd;
	}

	public void setPasswordd(String passwordd) {
		this.passwordd = passwordd;
	}

	public List<Favorite> getFavorites() {
		return this.favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

	public Favorite addFavorite(Favorite favorite) {
		getFavorites().add(favorite);
		favorite.setUser(this);

		return favorite;
	}

	public Favorite removeFavorite(Favorite favorite) {
		getFavorites().remove(favorite);
		favorite.setUser(null);

		return favorite;
	}

	public List<Share> getShares() {
		return this.shares;
	}

	public void setShares(List<Share> shares) {
		this.shares = shares;
	}

	public Share addShare(Share share) {
		getShares().add(share);
		share.setUser(this);

		return share;
	}

	public Share removeShare(Share share) {
		getShares().remove(share);
		share.setUser(null);

		return share;
	}

	public User(String id, boolean adminn, String email, String fullname, String passwordd, List<Favorite> favorites,
			List<Share> shares) {
		super();
		this.id = id;
		this.adminn = adminn;
		this.email = email;
		this.fullname = fullname;
		this.passwordd = passwordd;
		this.favorites = favorites;
		this.shares = shares;
	}
	
}