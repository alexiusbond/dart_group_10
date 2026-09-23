# 📘 Git — краткая шпаргалка

> Первые команды выполняются **только один раз**, когда вы установили Git на свой компьютер.

```bash
git --version                         # показывает версию установленного Git
git config --global user.name "ВАШ ЛОГИН"
git config --global user.email "ВАШ EMAIL"
git config --list                     # показывает сохранённые настройки Git
```

---

## 🆕 Создание нового проекта (1 раз на проект)

```bash
git init                              # инициализирует репозиторий (.git) в папке проекта
git branch -M main
git remote add origin <HTTPS link.git> # связывает локальный репозиторий с удалённым
```

> Пример: `git remote add origin https://github.com/user/repo.git`

---

## 🔁 Обычный цикл отправки изменений (каждый раз)

```bash
git add <file_name>   # подготовить конкретный файл к коммиту
git add .             # подготовить все изменения
git commit -m "lesson 1"   # создать коммит (сохранить изменения)
git push origin main     # отправить коммиты на сервер (ветка main)
```

---

## 🆕 Полезные команды

```bash
git rm --cached <file_name>      # убрать файл из индекса (не трогая локальный файл)
git rm --cached -r <directory>   # убрать папку из индекса
git status -s                    # короткий статус
git status -v                    # подробный статус
```

**.gitignore** — файл для исключения файлов/папок из отслеживания.
Пример `.gitignore`:
```
# IDE/OS
.vscode/
.idea/
.DS_Store

# Dart/Flutter
.dart_tool/
.build/
packages/
pubspec.lock
```

---

## ⬇️ Клонирование и привязки

```bash
git clone <link>                  # клонировать репозиторий
git remote remove origin          # удалить текущую привязку к удалённому репозиторию
git log                           # история коммитов
```

---

## 🌿 Работа с ветками

```bash
git branch                        # показать все локальные ветки
git branch <name>                 # создать ветку (без переключения)
git checkout <name>               # переключиться на ветку
git checkout -b <name>            # создать ветку и сразу переключиться
git branch --delete <name>        # удалить локальную ветку
git push origin --delete <name>   # удалить ветку в удалённом репозитории
git merge <name>                  # слить изменения из <name> в текущую ветку
```

> Перед `merge` убедитесь, что вы на целевой ветке, куда хотите слить изменения (например, `main`).  
> Рекомендуется перед слиянием обновить целевую ветку:  
> `git checkout main && git pull`

---

## 🛠️ Быстрые проверки и типовые проблемы

- Текущая ветка и статус:
  ```bash
  git status
  git branch
  ```
 
- Если нужно изменить адрес удалённого репозитория:
  ```bash
  git remote set-url origin <new_link.git>
  ```

---

## 🔐 SSH вместо HTTPS (опционально)
Чтобы не вводить пароль каждый раз, можно подключиться по SSH:
```bash
# Сгенерировать ключ (нажмите Enter для значений по умолчанию)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Скопировать ключ и добавить его на GitHub/GitLab
cat ~/.ssh/id_ed25519.pub
```

---

© 2025 — git_help.md
