---
# You can also start simply with 'default'
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: /cover.jpg
# some information about your slides (markdown enabled)
title: Оптимізуємо збірку дронів
info: |
  ## Оптимізуємо збірку дронів
  Доповідь для Victory Drones
# apply unocss classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
# open graph
# seoMeta:
#  ogImage: https://cover.sli.dev
---

# Оптимізуємо збірку дронів

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---
layout: image-right
image: /who-am-i.jpg
---

# Хто я?

- Веб розробник
- До війни:
  - Не знав як працювати з паяльником
  - 3Д друк - то для тих, хто з руками і полюбояє збирати своє
- На сьогодні:
  - Може ще 3д принтер купимо? (ні, нема вже куди ставити)
  - Третій потік, група А у курсі "Народний FPV"
  - Треба дрони, дрони, дрони!

<!--
Here is another comment.
-->

---
layout: cover
background: /fpvs_cover.jpeg
---

# Знайомство з дронами

---
layout: image-right
image: /3d_printer.jpg
---

# Як дійшов до такого життя?

- Почав з ДрукАрмії (Ender 3 v3 se принтер)
- З часов зрозумів що не достатньо тільки це робити
- Долучився до курсу "Народний FPV"
- Тепер ще вчусь збирати дрони
- Досі нічого не знаю
  - Піди? Блак бокс? Угу чув - щось розумне )

---
layout: cover
background: /instruments.jpg
---

# Інструментарій

---
layout: image
image: /tools1.jpg
---

---
layout: image
image: /tools1_example.jpg
---

---
layout: image-right
image: /tools2.jpg
---

# Жала

- T12-B2 і T12-B3 - силові, мотори
- T12-KU (можна і інші невеличкі) - на всю дрібноту
- Pine64 Pinecil і подібні - для портативного паяння

<!--
Notes can also sync with clicks

[click] This will be highlighted after the first click

[click] Highlighted with `count = ref(0)`

[click:3] Last click (skip two clicks)
-->

---
layout: image
image: /tools3.jpg
---

---
layout: image
image: /tools4.jpg
---

---
layout: image
image: /tools5.jpg
---

---
layout: image
image: /tools5_safety.jpg
---

---
layout: image
image: /tools6.jpg
---

---
layout: two-cols
layoutClass: gap-16
---

# Чи потрібен шуруповерт?

- Коротко: ні
- Але якщо є можливість - це корисний інструмент, але не обовʼязковий
- Не беріть дешеві - це занадто "дорого"


::right::

![tools7](/tools7.jpg)

---
layout: cover
background: /3d_print_tool.jpg
---

# 3Д принтер (опційно)

---
layout: image
image: /3dprint_parts1.jpg
---

---
layout: image
image: /3dprint_parts2.jpg
---

---
layout: cover
background: /making_cover.jpg
---

# Збірка

---

# Збірка

- Планується на збірку два чи більше дронів з ідентичних компонентів
  - Основна причина - якщо одни з них не функціонує - у Вас є можливість швидкого перекидання компонентів, щоб швидше знайти причину проблеми
  - Простіше з закупівлями (буде далі)
  - Спрошує через конвеєр тип виробництва
  - З мінусів - це дорожче
- Спеціалізація
  - Тобто чіткий вибір "робимо 10 дюймів на такій рамі, такому vtx, з такою камерою, і т.д."
  - Саме замовлення може давати такі обмеження, наприклад дрони для бригад у Victory Drones
  - Пізніше простіше на етапі прошивки, коли конфіг вже "готовий" з попередніх збірок
  - Мінус - може бути нудно для людей, яких цікавить процесс, а не результат (сам такий)

---
layout: image
image: /making_example.jpg
---

---
layout: image-right
image: /planning_example.jpg
---

# Планування збірок

- Планування завчасно збірок, не чекаючи завершення попередньої
  - Тобто поки летять компоненти на 2 вісімки, я вже планую 2 десятки з бомбером, а значить можливо треба закупити скиди
- Для ведення компонентної бази підходить будь який todo аплікація, але найкраще ще google sheet/excel

---

# Конвеєр збірки (розділення на частини)

- Розділяєю збірку на етапи
  - **Збірка рами**, якщо є мотори - з моторами. Якщо бомбер - скид кріпеться теж на цьому етапі.
    - Не треба багато розпаковувати речей - викрутки, накладка на стіл, фіксатор (не завжди треба)
    - Через це можливо робити вранці до роботи/ввечері після роботи (без шурупокрута ввечері)
  - **Пре-підготовка компонентів**
    - Розпаковка і сортування компонентів на бокси (аврора і подібні магазини - прозорі контейнери), підготовка шлейфів, докидування деталей
  - **Паяння контроллера моторів** до моторів і силових (чистка і лакування, сложе останне вже не треба), в цей момент перевірка смоук стопером
  - **Паяння польотного контроллера** (чистка і лакування, сложе останне вже не треба) + підʼєднання до контроллера моторів, перевірка смоук стопером
  - **Збираємо до кінця** (стяжки всюди!), прошивка, пошук проблем, якщо виникли
  - **Пакування і відправка** (не забуваємо відправити 2-N разів ту саму форму)
    - Тут можна спробувати і зекономити і страхувати на мізер дрони у НП, але я таке не практикую

---
layout: image
image: /making_example2.jpg
---

---
layout: image
image: /making_example3.jpg
---

---
layout: cover
background: /fpv_components_cover.jpeg
---

# Закупівля компонентів

---
layout: image-right
image: /swarm_army.png
---

# Закупівля компонентів

- Купляємо два і більше компонентів (тобто мотори >= 8 штук)
  - Можливі знижки вже від продавця (витрать від $89 чи $119 і отримай $3/5/8 знижки, яка сумується з aliexpress кодом)
  - Використовувати [swarm.army](https://swarm.army/) для пошуку компонентів, але вони не бачать подібні "знижки за суммою"
- На сьогоднішній день вітчизняні компоненти часто однакові по ціні з китайськими, а значить нема ліміта на 150 евро і затримки у 2-3 тижні

---
layout: image-right
image: /components2.png
---

# Закупівля компонентів

- Купляємо до 150 евро, чекаємо поки товари не полетять до вас по трекіегу перед наступним замовленням
  - Враховуйте свята у Китаї і Україні, щоб посилки не "зустрілися разом"

---
layout: cover
background: /testing_cover.jpg
---

# Тестування

---
layout: cover
---

<video controls muted>
  <source src="/testing.mp4" type="video/mp4">
</video>

---
layout: cover
background: /where_is_money.jpg
---

# Де на все це брати гроші?

---
layout: image
image: /i_dont_know.jpg
---

---
layout: image
image: /fpv_13.png
---

---
layout: image-right
image: /packages.jpg
---

# Гроші

- В мене нема прикладів успішних зборів
- Основне фінансування - це робота і розподілення бюджету
- Дрони це просто відсоток тих грошей що я направляю на війну


---
layout: two-cols
---

![skarb](/skarb.jpg)

::right::

![skarb2](/skarb2.jpg)

---
layout: image
image: /skarb_final.jpg
---

---
layout: image
image: /conclusion.jpg
backgroundSize: contain
---

---
layout: center
---

# Q&A
