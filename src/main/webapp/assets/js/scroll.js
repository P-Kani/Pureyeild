document.addEventListener("DOMContentLoaded", function () {

  /* ===== Scroll reveal (cards & sections) ===== */
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add("in-view");
        }
      });
    },
    { threshold: 0.15 }
  );

  document.querySelectorAll(".animate").forEach(el => {
    observer.observe(el);
  });

  /* ===== Text reveal letter-by-letter ===== */
  document.querySelectorAll(".text-reveal").forEach(el => {
    const text = el.textContent;
    el.textContent = "";
    [...text].forEach((char, i) => {
      const span = document.createElement("span");
      span.textContent = char === " " ? "\u00A0" : char;
      span.style.animationDelay = `${i * 0.05}s`;
      el.appendChild(span);
    });
  });

});
