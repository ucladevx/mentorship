var TabNavigation = function(containerSelector){
  this._selector = containerSelector;
  this._init();
}

TabNavigation.prototype._init = function(){
  var tabs = $(this._selector + ' .tab');
  tabs.click($.proxy(this._handleClick, this));
}

TabNavigation.prototype._extractId = function(string){
  return string.substring(string.indexOf('-') + 1);
}

TabNavigation.prototype._handleClick = function(e){

  var id = $(e.target)[0].id;
  id = this._extractId(id);

  //remove selection from all tabs
  var tabs = $(this._selector + ' .tab');
  tabs.removeClass('selected');

  //add hide to all tabContent
  var tabContent = $(this._selector + ' .tab-content');
  tabContent.addClass('hide');

  //update tab selected
  var correspondingTab = $(this._selector + ' #tab-' + id);
  correspondingTab.addClass('selected');

  //remove hide of id to show correct tab
  var correspondingTabContent = $(this._selector + ' #item-' + id);
  correspondingTabContent.removeClass('hide');
}

function initProfileTab(){
  var profileTabs = new TabNavigation('.profile-content');
}


