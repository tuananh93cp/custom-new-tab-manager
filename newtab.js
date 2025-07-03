// Custom New Tab Manager - JavaScript
document.addEventListener('DOMContentLoaded', function() {
    // Search functionality
    const searchBox = document.getElementById('searchBox');
    if (searchBox) {
        searchBox.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                const query = this.value.trim();
                if (query) {
                    if (query.includes('.') && !query.includes(' ')) {
                        window.location.href = query.startsWith('http') ? query : 'https://' + query;
                    } else {
                        window.location.href = 'https://www.google.com/search?q=' + encodeURIComponent(query);
                    }
                }
            }
        });
    }

    // Update time function
    function updateTime() {
        const now = new Date();
        const timeString = now.toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'});
        const dateString = now.toLocaleDateString([], {weekday: 'long', year: 'numeric', month: 'long', day: 'numeric'});
        const currentTimeElement = document.getElementById('currentTime');
        if (currentTimeElement) {
            currentTimeElement.textContent = timeString + ' • ' + dateString;
        }
    }

    // Initialize time and update every second
    updateTime();
    setInterval(updateTime, 1000);
}); 