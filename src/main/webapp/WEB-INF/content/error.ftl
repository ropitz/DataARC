<!DOCTYPE html PUBLIC 
    "-//W3C//DTD XHTML 1.1 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title>Admin</title>
        <#global contextPath="">
        <#global authenticated=false >
    <#include "includes/header.ftl"/>
    <#import "macros/body.ftl" as body />
    </head>
    
    <@body.body>
<h1> Error </h1>
<blockquote>
<p><b>url</p>:${url}</p>
<p>${exception}</p>
</blockquote>
</@body.body>
</html>