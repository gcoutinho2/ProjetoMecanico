$(function () {

	$("#side-menu").metisMenu();

});

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function () {
	$(window).bind("load resize", function () {
		topOffset = 50;
		width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
		if (width < 768) {
			$("#navbar-collapse").addClass("collapse");
			topOffset = 100; // 2-row-menu
		} else {
			var div_navbar_collapse = $("#navbar-collapse");
			div_navbar_collapse.removeClass("collapse");
			if (div_navbar_collapse && div_navbar_collapse[0])
				div_navbar_collapse[0].style.height = "";
		}

		height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
		height = height - topOffset;
		if (height < 1) height = 1;
		if (height > topOffset) {
			$("#page-wrapper").css("min-height", (height) + "px");
		}
	});

	var url = window.location.href, i, found = false;
	if ((i = url.indexOf("/Edit")) >= 0) {
		if ((i = url.indexOf("EditLocal.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageLocals.aspx";
		else if ((i = url.indexOf("EditContent.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageContents.aspx";
		else if ((i = url.indexOf("EditPlaylist.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManagePlaylists.aspx";
		else if ((i = url.indexOf("EditAdvertisement.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageAdvertisements.aspx";
		else if ((i = url.indexOf("EditCustomer.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageCustomers.aspx";
		else if ((i = url.indexOf("EditAgency.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageAgencies.aspx";
		else if ((i = url.indexOf("EditRequest.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageRequests.aspx";
	} else if ((i = url.indexOf("/Info")) >= 0) {
		if ((i = url.indexOf("InfoLocal.aspx", i + 1)) >= 0)
			url = url.substr(0, i) + "ManageLocals.aspx";
	}

	var element = $("ul.nav a").filter(function () {
		if (found)
			return false;
		if (this.href == url || url.indexOf(this.href) >= 0) {
			found = true;
			return true;
		}
		return false;
	}).addClass("active").parent().parent().addClass("in").parent();
	if (element.is("li")) {
		element.addClass("active");
	}
});
