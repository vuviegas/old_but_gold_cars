import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["old", "classics", "exclusive"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
