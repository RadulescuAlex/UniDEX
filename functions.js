let allWords = [];

function loadWords() {
  fetch('data/data.json')
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
            <div>${word.Word}</div>
            <div class="distanta">${word.Explication}</div>
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

