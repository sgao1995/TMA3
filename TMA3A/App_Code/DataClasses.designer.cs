﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Database")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertSlideImg(SlideImg instance);
  partial void UpdateSlideImg(SlideImg instance);
  partial void DeleteSlideImg(SlideImg instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<SlideImg> SlideImgs
	{
		get
		{
			return this.GetTable<SlideImg>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SlideImg")]
public partial class SlideImg : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ImgId;
	
	private string _ImgSrc;
	
	private string _ImgTitle;
	
	private string _ImgDesc;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnImgIdChanging(int value);
    partial void OnImgIdChanged();
    partial void OnImgSrcChanging(string value);
    partial void OnImgSrcChanged();
    partial void OnImgTitleChanging(string value);
    partial void OnImgTitleChanged();
    partial void OnImgDescChanging(string value);
    partial void OnImgDescChanged();
    #endregion
	
	public SlideImg()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImgId", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int ImgId
	{
		get
		{
			return this._ImgId;
		}
		set
		{
			if ((this._ImgId != value))
			{
				this.OnImgIdChanging(value);
				this.SendPropertyChanging();
				this._ImgId = value;
				this.SendPropertyChanged("ImgId");
				this.OnImgIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImgSrc", DbType="VarChar(128)")]
	public string ImgSrc
	{
		get
		{
			return this._ImgSrc;
		}
		set
		{
			if ((this._ImgSrc != value))
			{
				this.OnImgSrcChanging(value);
				this.SendPropertyChanging();
				this._ImgSrc = value;
				this.SendPropertyChanged("ImgSrc");
				this.OnImgSrcChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImgTitle", DbType="VarChar(128)")]
	public string ImgTitle
	{
		get
		{
			return this._ImgTitle;
		}
		set
		{
			if ((this._ImgTitle != value))
			{
				this.OnImgTitleChanging(value);
				this.SendPropertyChanging();
				this._ImgTitle = value;
				this.SendPropertyChanged("ImgTitle");
				this.OnImgTitleChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImgDesc", DbType="VarChar(128)")]
	public string ImgDesc
	{
		get
		{
			return this._ImgDesc;
		}
		set
		{
			if ((this._ImgDesc != value))
			{
				this.OnImgDescChanging(value);
				this.SendPropertyChanging();
				this._ImgDesc = value;
				this.SendPropertyChanged("ImgDesc");
				this.OnImgDescChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
