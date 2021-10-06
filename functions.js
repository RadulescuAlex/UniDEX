const API = {
    // CREATE: {
    //     URL:  "http://localhost:3000/words/create",
    //     METHOD: "POST"
    // },
    READ: {
        URL: "http://localhost:3000/words",
        METHOD: "GET"
    } //PUNE VIRGULA AICI
    // // UPDATE: {
    // //     URL: "http://localhost:3000/words/update",
    // //     METHOD: "PUT"
    // // },
    // // DELETE: {
    // //     URL: "http://localhost:3000/words/delete",
    // //     METHOD: "DELETE" 
    // // }
};

if (location.host === "RadulescuAlex.github.io") {
  API.READ.URL ="data/data.json";
  API.READ.METHOD = "GET";
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

// fetch('data/data.json')
//   .then(response => {return response.json()})
//   .then(data => appendData(data))
//   .catch(function (err) {
//   console.log('error: ' + err);});

//   function appendData(data) {
//     var mainContainer = document.getElementById("results");
//     for (var i = 0; i < data.lengh; i++) {
//         var div = document.createElement("div");
//         div.innerHTML = data[i].Word + ' = ' + data[i].Explication;
//         mainContainer.appendChild(div);
//     }
// }

