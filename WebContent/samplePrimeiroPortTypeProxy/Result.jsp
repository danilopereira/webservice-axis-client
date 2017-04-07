<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePrimeiroPortTypeProxyid" scope="session" class="br.com.fiap.exemplo.PrimeiroPortTypeProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePrimeiroPortTypeProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePrimeiroPortTypeProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePrimeiroPortTypeProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        br.com.fiap.exemplo.PrimeiroPortType getPrimeiroPortType10mtemp = samplePrimeiroPortTypeProxyid.getPrimeiroPortType();
if(getPrimeiroPortType10mtemp == null){
%>
<%=getPrimeiroPortType10mtemp %>
<%
}else{
        if(getPrimeiroPortType10mtemp!= null){
        String tempreturnp11 = getPrimeiroPortType10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String nome_1id=  request.getParameter("nome16");
            java.lang.String nome_1idTemp = null;
        if(!nome_1id.equals("")){
         nome_1idTemp  = nome_1id;
        }
        java.lang.String ola13mtemp = samplePrimeiroPortTypeProxyid.ola(nome_1idTemp);
if(ola13mtemp == null){
%>
<%=ola13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(ola13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 18:
        gotMethod = true;
        String nome_2id=  request.getParameter("nome21");
            java.lang.String nome_2idTemp = null;
        if(!nome_2id.equals("")){
         nome_2idTemp  = nome_2id;
        }
        java.lang.String boanoite18mtemp = samplePrimeiroPortTypeProxyid.boanoite(nome_2idTemp);
if(boanoite18mtemp == null){
%>
<%=boanoite18mtemp %>
<%
}else{
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(boanoite18mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>