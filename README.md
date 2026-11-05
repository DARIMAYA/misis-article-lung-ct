# Статья: сегментация и классификация патологий лёгких на КТ

LaTeX-статья в формате сборника НИТУ «МИСИС» (XeLaTeX, две колонки). Шаблон и класс `misisarticle.cls` взяты из [sadekovlar/misis-article-latex](https://github.com/sadekovlar/misis-article-latex) (LPPL 1.3c).

Тема: сравнение UNet 3+ и nnU-Net (сегментация узлов, LIDC-IDRI) и EfficientNet-B0 и Swin Transformer (классификация КТ-срезов). Результаты предварительные.

## Файлы

| Файл | Назначение |
|------|------------|
| `article.tex` | Текст статьи |
| `misisarticle.cls` | Класс оформления (не менять) |
| `figures/` | Рисунки статьи |
| `experiment/` | Результаты, протокол, ссылки на ноутбуки |
| `Makefile` | `make article`, `make xelatex`, `make dist` |
| `.github/workflows/build.yml` | Сборка PDF в GitHub Actions |

## Как собрать

```bash
# вариант 1: tectonic (brew install tectonic)
make article            # build/article.pdf

# вариант 2: XeLaTeX
make xelatex

# вариант 3: Overleaf
make dist               # dist/misis-article.zip -> Overleaf, компилятор XeLaTeX
```

PDF в репозитории не хранится: его можно скачать из артефактов GitHub Actions.

## Что осталось заполнить

```bash
grep -n "todo" article.tex
```

- описание литературы [9]–[13] (Достовалова, Пашина, Исаченко/Парчиев, Семёнов, Блинов/Курочкин);
- число классов и размеры выборок для Chest CT-Scan Images;
- гиперпараметры классификаторов и параметры функции потерь;
- тестовые метрики сегментации (табл. IV) после запуска ячеек 7–10 ноутбука;
- электронная почта автора в `\misisauthor{...}` (сейчас пусто).

## Чек-лист перед сдачей

- [ ] Компилятор XeLaTeX или tectonic
- [ ] `misisarticle.cls` лежит рядом с `article.tex`
- [ ] Нет ни одного `\todo{...}`
- [ ] Каждая цифра в статье совпадает с `experiment/results.csv`
- [ ] Все источники из списка процитированы в тексте и наоборот
- [ ] PDF собирается без ошибок, проверен антиплагиат

## Лицензия

Класс `misisarticle.cls` — LPPL 1.3c, текст лицензии в `LICENSE`.
