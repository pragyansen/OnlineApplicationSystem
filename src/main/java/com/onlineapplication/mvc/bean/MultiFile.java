package com.onlineapplication.mvc.bean;

import java.util.ArrayList;
import java.util.List;

public class MultiFile {
	
	private List<SingleFile> files = new ArrayList<SingleFile>();
	
	public MultiFile(){
		files.add(new SingleFile());
		files.add(new SingleFile());
	}

	public List<SingleFile> getFiles() {
		return files;
	}

	public void setFiles(List<SingleFile> files) {
		this.files = files;
	}

}
