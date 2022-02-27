package com.oe.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;


@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(name = "Report.favoriteTitle",
		procedureName = "spfavoriteTitle",
		resultClasses = {String.class},
		parameters = {@StoredProcedureParameter(mode = ParameterMode.REF_CURSOR, type = void.class)}
	)
})

@Entity
public class Report {
	@Id
	Serializable group;
	long likes;
	Date newest;
	Date oldest;
	
	public Report(Serializable group, long likes, Date newest, Date oldest) {
		super();
		this.group = group;
		this.likes = likes;
		this.newest = newest;
		this.oldest = oldest;
	}
	public Report() {
		super();
	}
	public Serializable getGroup() {
		return group;
	}
	public void setGroup(Serializable group) {
		this.group = group;
	}
	
	public long getLikes() {
		return likes;
	}
	public void setLikes(long likes) {
		this.likes = likes;
	}
	public Date getNewest() {
		return newest;
	}
	public void setNewest(Date newest) {
		this.newest = newest;
	}
	public Date getOldest() {
		return oldest;
	}
	public void setOldest(Date oldest) {
		this.oldest = oldest;
	}
	
}
