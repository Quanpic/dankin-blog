---
layout: template
title: Блог и Middleman - часть 1
date: 2016-05-01 18:53 UTC
---

Во-первых, что такое [Middleman](https://middlemanapp.com/)? Беру определение с оф. сайта. Middleman - это генератор статических сайтов, использующий все инструменты веб-разработки.

Для того чтобы установить Middleman на свой компьютер, нужно установить [ruby](https://www.ruby-lang.org/ru/), так как Middleman является гемом. Как сказано на оф. сайте нужно выпольнить пару команд в терминале.

```
gem install middleman
```

Позже создаём проект:

```
middleman init blog
```

И переходим в него:

```
cd blog
```

Дальше заходим в Gemfile (список ваших гемов) и добавляем гем "middleman-blog"

```
gem "middleman-blog"
```

Заходим в ваш config.rb и добавляем эти строчки:

<pre>
activate :blog do |blog|
  blog.permalink = "posts/{title}"
  blog.sources = "posts/{title}"
end
</pre>

Строчка ``` blog.permalink = "posts/{title}" ``` генерирует ссылки. Вы можете указать любой путь. ```{title}``` указывает на заголовок поста. В ``` blog.sources = "posts/{title}" ``` вы можете указать место, где находятся файлы посты. Посты мы будем писать конечно же на markdown, поэтому давайте изменим дефолтное расширение для постов.

<pre>
activate :blog do |blog|
  ...
  blog.default_extension = ".html.md"
  ...
end
</pre>

Теперь давайте запустим веб-сервер Middleman. В терминале пишем одно слово:

``` middleman ```

Далее переходим по ссылке, которая указана в терминале и попадаем на наш "блог".

В этой части мы произвели базовую настройку. В следующей части мы займёмся шаблонами.
