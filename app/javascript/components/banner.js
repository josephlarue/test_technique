import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Trello 2", " Be on time ♥", "☻ Everytime ☻"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };