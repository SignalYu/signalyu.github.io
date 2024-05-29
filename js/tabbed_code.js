document.addEventListener("DOMContentLoaded", function () {
    const tabButtons = document.querySelectorAll(".tab_btn");

    tabButtons.forEach(button => {
        button.addEventListener("click", () => {
            const currentTabButtons = button.parentElement.querySelectorAll(".tab_btn");
            const currentCodeBlocks = button.parentElement.parentElement.querySelectorAll(".code_block")
            // Remove 'active' class from all code blocks and buttons
            currentCodeBlocks.forEach(block => block.classList.remove("active"));
            currentTabButtons.forEach(btn => btn.classList.remove("active"));

            // Add 'active' class to the clicked button and corresponding code block
            button.classList.add("active");

            // Find the index of active button 
            let currentIndex;
            for (let i = 0; i < currentTabButtons.length; i++) {
                if (currentTabButtons[i].classList.contains("active")) {
                    currentIndex = i
                    break
                }
            }

            currentCodeBlocks[currentIndex].classList.add("active");
        });
    });
});