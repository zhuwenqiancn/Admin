<%
var id=has(id)?id:"", name=has(name)?name:"", value=has(value)?value:"";
if(has(path)) {
  name=path;
  var form=@this.getParentByTagName('form');
  if(form!=null) {
    value=getProperty(form.attrs['model'], path);
  }
} else {
  
}
%>
<input type="hidden" <%if(id!="") { %>id="${id }"<%} %> name="${name }" value="${value! }" />      