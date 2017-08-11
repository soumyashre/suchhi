$(document).ready(function() {
	console.log("hi");
	value=$("#itemscount").val();
	varname=value-1;
		console.log(varname);
		
	$("#additembutton").click(function(){
		 varname=varname+1;
	var myform = $('#myform');
	console.log("First:"+varname);
	
	 myform.find('tr').each(function(){
		
         var trow = $(this);
         console.log("this"+this);
         if(trow.index() === 0){
             trow.append('<td></td><br>');
         }else{
             trow.append('<td><input type="text" id="item'+varname+'" name="item'+varname+'"/></td><br><br>');
            
          }
         console.log("Second:"+varname);
        
         });
	})
	$("#deleteitembutton").click(function(){
	
	});
});