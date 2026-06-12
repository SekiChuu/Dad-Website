(function(){
  const images = Array.from(document.querySelectorAll('.gallery-image'));
  if (!images.length) return;

  const lightbox = document.getElementById('lightbox');
  const lightboxImg = lightbox.querySelector('.lightbox-image');
  const caption = lightbox.querySelector('.lightbox-caption');
  const closeBtn = lightbox.querySelector('.lightbox-close');
  const nextBtn = lightbox.querySelector('.lightbox-next');
  const prevBtn = lightbox.querySelector('.lightbox-prev');

  let current = 0;

  function open(index) {
    current = index;
    const img = images[current];
    lightboxImg.src = img.src;
    caption.textContent = img.alt || img.closest('.project-card').querySelector('h3')?.textContent || '';
    lightbox.setAttribute('aria-hidden','false');
  }

  function close() {
    lightbox.setAttribute('aria-hidden','true');
    lightboxImg.src = '';
  }

  function next() {
    current = (current + 1) % images.length;
    open(current);
  }

  function prev() {
    current = (current - 1 + images.length) % images.length;
    open(current);
  }

  images.forEach((img, i) => {
    img.addEventListener('click', () => open(i));
    img.setAttribute('loading','lazy');
  });

  closeBtn.addEventListener('click', close);
  nextBtn.addEventListener('click', next);
  prevBtn.addEventListener('click', prev);

  lightbox.addEventListener('click', (e) => {
    if (e.target === lightbox) close();
  });

  document.addEventListener('keydown', (e) => {
    if (lightbox.getAttribute('aria-hidden') === 'false') {
      if (e.key === 'Escape') close();
      if (e.key === 'ArrowRight') next();
      if (e.key === 'ArrowLeft') prev();
    }
  });
})();

/* Scroll reveal observer: applies .reveal then toggles .active when visible */
(function(){
  const selectors = ['.card', '.project-card', '.hero-content', '.section-title', '.hero h1', '.hero-text'];
  const items = Array.from(document.querySelectorAll(selectors.join(',')));
  if (!items.length) return;

  items.forEach((el, i) => {
    el.classList.add('reveal');
  });
  // Avoid setting many inline styles to reduce layout thrashing; use CSS for timing

  const observer = new IntersectionObserver((entries, obs) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('active');
        obs.unobserve(entry.target);
      }
    });
  }, { threshold: 0.12 });

  items.forEach(el => observer.observe(el));
})();
