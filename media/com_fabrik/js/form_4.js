function repeatGroupLabel(){
    //get the number of repeating sub groups:
    var c = $('groupX').getElements('.fabrikSubGroup').length;
 
    //iterarte over each subgroup
    document.id('groupX').getElements('.fabrikSubGroup').each(function(t, x){
 
        //set the class name for the repeating sub group
        //will create alternate row0, row1 classes
        t.className = 'fabrikSubGroup row'+ (x%2);
 
        //remove any previously created group numbering
        t.getElements('.groupnum').destroy();
 
        //insert 'group X of Y' under the repeat group buttons ([+] / [-])
        new Element('div', {'class':'groupnum'}).setText('group ' + (x+1) + '/' + c).injectInside(t);
    });
}
 
//run the function when your page loads
window.addEvent('domready', function(){
    repeatGroupLabel();
});