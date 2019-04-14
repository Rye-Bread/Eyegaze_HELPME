using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Eyegaze
{
    #region Topics
    public class Topics
    {
        #region Member Variables
        protected string _Title;
        protected string _text;
        protected string _steps;
        protected int _format;
        protected string _img;
        protected string _img;
        protected string _img;
        #endregion
        #region Constructors
        public Topics() { }
        public Topics(string text, string steps, int format, string img, string img, string img)
        {
            this._text=text;
            this._steps=steps;
            this._format=format;
            this._img=img;
            this._img=img;
            this._img=img;
        }
        #endregion
        #region Public Properties
        public virtual string Title
        {
            get {return _Title;}
            set {_Title=value;}
        }
        public virtual string Text
        {
            get {return _text;}
            set {_text=value;}
        }
        public virtual string Steps
        {
            get {return _steps;}
            set {_steps=value;}
        }
        public virtual int Format
        {
            get {return _format;}
            set {_format=value;}
        }
        public virtual string Img
        {
            get {return _img;}
            set {_img=value;}
        }
        public virtual string Img
        {
            get {return _img;}
            set {_img=value;}
        }
        public virtual string Img
        {
            get {return _img;}
            set {_img=value;}
        }
        #endregion
    }
    #endregion
}