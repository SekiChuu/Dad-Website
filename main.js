const revealItems = document.querySelectorAll(
  ".section, .card, .project-card, .section-title, .section-kicker"
);

const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("is-visible");
        observer.unobserve(entry.target);
      }
    });
  },
  {
    threshold: 0.12
  }
);

revealItems.forEach((item) => {
  item.classList.add("reveal");
  observer.observe(item);
});