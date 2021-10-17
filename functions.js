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
  API.READ.URL = "data/data.json";
  API.CREATE.URL = "data/data.create";
  API.UPDATE.URL = "data/data.update";
  API.DELETE.URL = "data/data.delete";

  API.READ.METHOD = "GET";
  API.CREATE.METHOD = "GET";
  API.UPDATE.METHOD = "GET";
  API.DELETE.METHOD = "GET";
}

let allWords = [];
let currentDomain = null;

function loadWords(query) {
  fetch(
    API.READ.URL +
      "?" +
      new URLSearchParams({
        query: query || "",
        domain: "drept",
      })
  )
    .then((r) => r.json())
    .then((words) => {
      console.log("words: ", words);
      allWords = words;
      displayWords(words);
    });
}

function getWordsAsHTML(words) {
  return words
    .map((word) => {
      return `<div class="inLine">
            <span>${word.word}</span>
            = 
            <span class="distanta">${word.explication}</span>
            <span class="buttons">
            <span><a href="#" class="delete-btn" data-id="${word.id}">&#10006;</a></span>
            <span><a href="#" class="edit-btn" data-id="${word.id}">&#9998;</a></span>
            </div>`;
    })
    .join("");
}

function displayWords(words) {
  const html = getWordsAsHTML(words);

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
  }
});

document.getElementById("search").addEventListener("input", (e) => {
  const text = e.target.value.toLowerCase();
  console.log("Cauta...: ", text);
  loadWords(text);
});

function getClickedValue() {
  document
    .querySelector("#top-menu-bar")
    .addEventListener("click", function (e) {
      if (e.target.matches("a")) {
        var d = e.target.getAttribute("data-page").toLowerCase();
        console.log("butonul apasat este: ", d);
        currentDomain = d;
      }
    });
}

getClickedValue();

function getWordValue() {
  const word = document.querySelector("[name=word]").value;
  const explication = document.querySelector("[name=explication]").value;
  const domain = currentDomain;
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
        window.location.reload();
      }
    });
}

function deleteWord(id) {
  fetch("http://localhost:3000/teams/delete", {
    method: "DELETE",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ id }),
  })
    .then((r) => r.json())
    .then((status) => {
      if (status.success) {
        loadTeams();
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
makeModal();
loadWords();
