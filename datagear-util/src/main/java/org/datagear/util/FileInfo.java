/*
 * Copyright 2018 datagear.tech
 *
 * Licensed under the LGPLv3 license:
 * http://www.gnu.org/licenses/lgpl-3.0.html
 */

package org.datagear.util;

import java.io.Serializable;
import java.text.DecimalFormat;

/**
 * 文件信息。
 * 
 * @author datagear@163.com
 *
 */
public class FileInfo implements Serializable, Comparable<FileInfo>
{
	private static final long serialVersionUID = 1L;

	/** 文件名 */
	private String name;
	
	/**是否目录*/
	private boolean directory;

	/** 字节数 */
	private long bytes = 0;

	/** 展示名称 */
	private String displayName = "";

	/** 友好显示的大小 */
	private String size = "";

	public FileInfo()
	{
		super();
	}

	public FileInfo(String name)
	{
		super();
		this.name = name;
		this.displayName = name;
	}

	public FileInfo(String name, boolean directory)
	{
		super();
		this.name = name;
		this.displayName = name;
		this.directory = directory;
	}

	public FileInfo(String name, boolean directory, long bytes)
	{
		super();
		this.name = name;
		this.directory = directory;
		this.bytes = bytes;
		this.displayName = name;
		this.size = toPrettySize(bytes);
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public boolean isDirectory()
	{
		return directory;
	}

	public void setDirectory(boolean directory)
	{
		this.directory = directory;
	}

	public long getBytes()
	{
		return bytes;
	}

	public void setBytes(long bytes)
	{
		this.bytes = bytes;
		this.size = toPrettySize(bytes);
	}

	public String getDisplayName()
	{
		return displayName;
	}

	public void setDisplayName(String displayName)
	{
		this.displayName = displayName;
	}

	public String getSize()
	{
		return size;
	}

	public void setSize(String size)
	{
		this.size = size;
	}

	@Override
	public int compareTo(FileInfo o)
	{
		return this.name.compareTo(o.name);
	}

	@Override
	public String toString()
	{
		return getClass().getSimpleName() + " [name=" + name + ", directory=" + directory + ", bytes=" + bytes + ", displayName="
				+ displayName + ", size=" + size + "]";
	}
	
	public static FileInfo valueOfFile(String name, long bytes)
	{
		FileInfo fi = new FileInfo(name, false, bytes);
		return fi;
	}
	
	public static FileInfo valueOfDirectory(String name)
	{
		FileInfo fi = new FileInfo(name, true);
		return fi;
	}

	/**
	 * 将字节数转换为美化大小字符串。
	 * 
	 * @param bytes
	 * @return
	 */
	public static String toPrettySize(long bytes)
	{
		double value = bytes;
		int count = 0;

		while (value > 1024 && count < (PRETTY_SIZE_FACTORS.length - 1))
		{
			value = value / 1024;
			count++;
		}

		return new DecimalFormat("0.0").format(value) + PRETTY_SIZE_FACTORS[count];
	}

	protected static final String[] PRETTY_SIZE_FACTORS = { "B", "K", "M", "G", "T", "P" };
}
