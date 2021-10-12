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

if ( location.host === "radulescualex.github.io") {
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

function loadWords(query) {
  fetch(API.READ.URL + '?' + new URLSearchParams({
    query: query || "",
    domain: 'drept'
}))
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
    return `<span class="inLine">
            <span>${word.word}</span>
            = 
            <span class="distanta">${word.explication}</span>
            </span>`
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

document.getElementById("search").addEventListener("input", e => {
  const text = e.target.value.toLowerCase();
  console.log('Cauta...: ', text);
  loadWords(text);
})


function getWordValue() {
  const word = documet.querySelector('[name=word]').value;
  const explication = document.querySelector('[name=explication]').value
  return{
    word: word,
    explication: explication
  };
}

function saveWord(word) {
  fetch(API.CREATE.URL, {
    METHOD: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(word)
  })
  .then(r => r.json())
  .then(status =>{
    console.warn('status after add', status);
    if (status.success) {
      window.location.reload();
    }
    })
}

function submitWord() {
  const word = getWordValue();
  console.warn('add this value in words.json', JSON.stringify(word))
  saveWord(word);
}

function makeModal() {
  var modal = document.getElementById("myModal");
  var btn = document.getElementById("myBtn");
  var span = document.getElementsByClassName("close")[0];
  btn.onclick = function() {
    modal.style.display = "block";
  } 
  span.onclick = function() {
    modal.style.display = "none";
  }
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
}

makeModal();