﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Style.aspx.cs" Inherits="Default2" EnableTheming="False" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function goURL() {

        location.href = "../login.aspx"
    }
    function style() {

          setTimeout("goURL()", 5000);
    
    }
    </script>
<style>
html,body{height: 100%;  }
body{
  background-color: black;
  background-image: -webkit-radial-gradient(center center, circle cover, rgba(255,255,255, 0.2), transparent 50%)
    ,-webkit-radial-gradient(center center, circle cover, rgba(255,255,255, 0.2), transparent 50%);

  background-size: 5px 5px, 100% 100%;
}

.foo,
.foo:before,
.foo:after,
.bar,
.bar:before,
.bar:after{
  box-sizing: border-box;
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  margin: auto;
  border: dashed 10px;
  border-radius: 50%;
-webkit-animation: foo 1.5s ease-in-out alternate infinite;
  -webkit-transform: translateZ(0); 
}
.foo{
   width: 200px;
   height: 200px;
  border-color: #004b6a;
  -webkit-animation-delay: 1.5s;
  
}
.bar{
  width: 100px;
   height: 100px;
  border-color: rgba(255,255,255, 0.5);
  -webkit-animation-delay: 2.5s;
}
.foo:before,
.foo:after,
.bar:before,
.bar:after{
  content:'';
}
.foo:before{
  border-color: #004b6a;
  -webkit-transform: scale(.2);
  -webkit-animation-delay: .5s;
}
.foo:after{
  border-color: rgba(255,255,255, 0.5);
  -webkit-transform: scale(.4);
  -webkit-animation-delay: 1s;
}

.bar:before{
  border-color: rgba(255,255,255, 0.5);
  -webkit-transform: scale(.2);
  -webkit-animation-delay: 1.5s;
}
.bar:after{
  border-color: #004b6a;
  -webkit-transform: scale(.4);
  -webkit-animation-delay: 2s;
}

@-webkit-keyframes foo{
  to{
    -webkit-transform: rotate(1080deg) scale(5);
  }
  
}

</style>
    <title></title>
</head>
<body  onload="style()">
    <form id="form1" runat="server">
    <div >
    <div class="foo">
    </div>
<div class="bar"></div>
    
    </div>
    </form>
</body>
</html>
