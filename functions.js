const API = {
    CREATE: {
        URL:  "http://localhost:3000/words/create",
        METHOD: "POST"
    },
    READ: {
        URL: "http://localhost:3000/words",
        METHOD: "GET"
    },
    UPDATE: {
        URL: "http://localhost:3000/words/update",
        METHOD: "PUT"
    },
    DELETE: {
        URL: "http://localhost:3000/words/delete",
        METHOD: "DELETE" 
    }
};

if (true || location.host === "radulescualex.github.io") {
  API.READ.URL ="data/data.json";
  API.CREATE.URL = "data/data.create";
  API.UPDATE.URL ="data/data.update";
  API.DELETE.URL ="data/data.delete";

  API.READ.METHOD = "GET";
  API.CREATE.METHOD = "GET";
  API.UPDATE.METHOD = "GET";
  API.DELETE.METHOD = "GET";
}

let allWords = [];

function loadWords() {
  fetch(API.READ.URL)
    .then(r => r.json())
    .then(words => {
      console.log("words: ", words);
      allWords = words;
      displayWords(words);
    })
}

loadWords();

function getWordsAsHTML(words) {
  return words.map(word => {
    return `<div class="inLine">
            <div>${word.word}</div>
            = 
            <div class="distanta">${word.explication}</div>
            </div>`
  }).join('');
}

function displayWords(words) {
  const html = getWordsAsHTML(words);

  document.getElementById('results').innerHTML = html;
}
 
function initMenu(id) {
var oldLink = document.querySelector("a[data-page].active")
  if (oldLink) {
    oldLink.classList.remove("active");
  }
  var link = document.querySelector(`a[data-page=${id}]`);
  link.classList.add('active');
}

document.querySelector('#top-menu-bar').addEventListener("click", e => {
  if (e.target.matches("a")) {
    const id = e.target.getAttribute("data-page");
    initMenu(id)
    // console.warn("click pe menu", id);
  }
  
})


