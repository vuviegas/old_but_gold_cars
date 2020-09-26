import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["antigos", "clássicos", "exclusivos"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
