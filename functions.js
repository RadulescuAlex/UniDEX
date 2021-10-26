const API = {
  CREATE: {
    URL: "http://localhost:3000/words/create",
    METHOD: "POST",
  },
  READ: {
    URL: "http://localhost:3000/words",
    METHOD: "GET",
  },
  UPDATE: {
    URL: "http://localhost:3000/words/update",
    METHOD: "PUT",
  },
  DELETE: {
    URL: "http://localhost:3000/words/delete",
    METHOD: "DELETE",
  },
};

if (location.host === "radulescualex.github.io") {
  API.CREATE.URL = "data/data.create";
  API.UPDATE.URL = "data/data.update";
  API.DELETE.URL = "data/data.delete";

  API.CREATE.METHOD = "GET";
  API.UPDATE.METHOD = "GET";
  API.DELETE.METHOD = "GET";
}

let allWords = [];
let domain = localStorage.getItem('domain') || "drept";

function setDomain(nextDomain) {
  domain = nextDomain
  localStorage.setItem('domain', domain )
}
function loadWords(query, domain) {
  const url =
    location.host === "radulescualex.github.io"
      ? `data/${domain}.json`
      : API.READ.URL;
  fetch(
    url +
      "?" +
      new URLSearchParams({
        query: query || "",
        domain,
      })
  )
    .then((r) => r.json())
    .then((words) => {
      console.log("words: ", words);
      allWords = words;
      displayWords(words);
    });
}

function highlight (text, search) {
  return search ? text.replaceAll(search, m => {
    return `<span class="highlight">${m}</span>`;
  }) : text;
}

function getWordsAsHTML(words, search) {
  return words
    .map((word) => {
      return `<div class="inLine">
            <span>${highlight(word.word, search)}</span>
            = 
            <span class="distanta">${highlight(word.explication, search)}</span>
            <span class="buttons">
              <span><a href="#" class="delete-btn" data-id="${word.id}">&#10006;</a></span>
            </span>  
            </div>`;
    })
    .join("");
}

function displayWords(words) {
  const search = document.getElementById("search").value;
  console.info(search)
  const html = getWordsAsHTML(words, search ? new RegExp(search, 'gi') : 0 );

  document.getElementById("results").innerHTML = html;
}

function initMenu(id) {
  var oldLink = document.querySelector("a[data-page].active");
  if (oldLink) {
    oldLink.classList.remove("active");
  }
  var link = document.querySelector(`a[data-page=${id}]`);
  link.classList.add("active");
}

document.querySelector("#top-menu-bar").addEventListener("click", (e) => {
  if (e.target.matches("a")) {
    const id = e.target.getAttribute("data-page");
    initMenu(id);
    setDomain(e.target.getAttribute("data-page")); 
    console.log("butonul apasat este: ", domain);
    loadWords("", domain);
  }
});

document.getElementById("search").addEventListener("input", (e) => {
  const text = e.target.value.toLowerCase();
  console.log("Cauta...: ", text);
  loadWords(text, domain);
});

function getWordValue() {
  const word = document.querySelector("[name=word]").value;
  const explication = document.querySelector("[name=explication]").value;
  return {
    word: word,
    explication: explication,
    domain: domain,
  };
}

function saveWord(word) {
  fetch(API.CREATE.URL, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(word),
  })
    .then((r) => r.json())
    .then((status) => {
      console.warn("status after add ", status);
      if (status.success) {
        //TODO send query
        loadWords("", domain);
        document.querySelector("form").reset();
      }
    });
}

function deleteWord(id) {
  fetch("http://localhost:3000/words/delete", {
    method: "DELETE",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ id }),
  })
    .then((r) => r.json())
    .then((status) => {
      if (status.success) {
        loadWords("", domain);
      }
    });
}

function submitWord() {
  const word = getWordValue();
  console.warn("add this value in words.json", JSON.stringify(word));

  saveWord(word);
}

function makeModal() {
  var modal = document.getElementById("myModal");
  var btn = document.getElementById("myBtn");
  var span = document.getElementsByClassName("close")[0];
  btn.onclick = function () {
    modal.style.display = "block";
  };
  span.onclick = function () {
    modal.style.display = "none";
  };
  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  };
}

initMenu(domain);
makeModal();
loadWords("", domain);

document.querySelector("#results").addEventListener("click", (e) => {
  if (e.target.matches("a.delete-btn")) {
    const id = e.target.getAttribute("data-id");
    deleteWord(id);
  }
});
