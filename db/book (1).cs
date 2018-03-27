using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Project
{
    #region Book
    public class Book
    {
        #region Member Variables
        protected int _id;
        protected string _image;
        protected string _title;
        protected string _sbn;
        protected string _author;
        protected string _binding;
        protected int _Price;
        protected string _description;
        #endregion
        #region Constructors
        public Book() { }
        public Book(string image, string title, string sbn, string author, string binding, int Price, string description)
        {
            this._image=image;
            this._title=title;
            this._sbn=sbn;
            this._author=author;
            this._binding=binding;
            this._Price=Price;
            this._description=description;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Image
        {
            get {return _image;}
            set {_image=value;}
        }
        public virtual string Title
        {
            get {return _title;}
            set {_title=value;}
        }
        public virtual string Sbn
        {
            get {return _sbn;}
            set {_sbn=value;}
        }
        public virtual string Author
        {
            get {return _author;}
            set {_author=value;}
        }
        public virtual string Binding
        {
            get {return _binding;}
            set {_binding=value;}
        }
        public virtual int Price
        {
            get {return _Price;}
            set {_Price=value;}
        }
        public virtual string Description
        {
            get {return _description;}
            set {_description=value;}
        }
        #endregion
    }
    #endregion
}