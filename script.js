// Smart Driver Forms Website
// Shared responsive navigation.

document.addEventListener("DOMContentLoaded", () => {
    const heroImage = document.getElementById("home-hero-image");
    const userAgentPhone = /Mobi|iPhone|iPod|Android.*Mobile/i.test(navigator.userAgent);
    const screenWidth = window.screen?.width || window.innerWidth;
    const screenHeight = window.screen?.height || window.innerHeight;
    const shortScreenSide = Math.min(screenWidth, screenHeight);
    const isPhone = userAgentPhone || shortScreenSide <= 600;

    if (isPhone && heroImage?.dataset.mobileSrc) {
        document.documentElement.classList.add("phone-layout");
        heroImage.src = heroImage.dataset.mobileSrc;
        heroImage.width = 760;
        heroImage.height = 360;
    }

    const toggle = document.querySelector(".nav-toggle");
    const nav = document.getElementById("primary-navigation");

    if (!toggle || !nav) {
        return;
    }

    const closeMenu = () => {
        nav.classList.remove("is-open");
        toggle.setAttribute("aria-expanded", "false");
    };

    toggle.addEventListener("click", () => {
        const isOpen = nav.classList.toggle("is-open");
        toggle.setAttribute("aria-expanded", String(isOpen));
    });

    nav.querySelectorAll("a").forEach((link) => {
        link.addEventListener("click", closeMenu);
    });

    window.addEventListener("resize", () => {
        if (window.innerWidth > 980) {
            closeMenu();
        }
    });
});
