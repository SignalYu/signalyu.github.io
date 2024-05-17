document.addEventListener("DOMContentLoaded", function() {
    const tabs = document.querySelectorAll(".tab_btn");
    const tabContents = document.querySelectorAll(".content_box");

    tabs.forEach(function(tab, index) {
        tab.addEventListener("click", function() {
            // Hide all tab contents
            tabContents.forEach(function(content) {
                content.classList.remove("active");
            });

            // Deactivate all tabs
            tabs.forEach(function(tab) {
                tab.classList.remove("active");
            });

            // Activate the clicked tab
            tab.classList.add("active");

            // Show the corresponding content
            tabContents[index].classList.add("active");
        });
    });
});
