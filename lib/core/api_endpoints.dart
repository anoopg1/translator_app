final baseurl =
   'https://google-translate113.p.rapidapi.com/api/v1/translator';

final headers = {
  'content-type': 'application/x-www-form-urlencoded',
  'X-RapidAPI-Key': 'bbb646f7b7mshf4ffb288b7d1bd7p1dcda8jsnf3165206607f',
  'X-RapidAPI-Host': 'google-translate113.p.rapidapi.com',
};

final body = {
  'from': 'auto',
  'to': 'en',
  'text': 'xin chào',
};

const allLanguagesurl ='https://google-translate113.p.rapidapi.com/api/v1/translator/support-languages';
final translatelext = "$baseurl/text";
