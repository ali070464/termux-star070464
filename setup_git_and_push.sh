#!/bin/bash

# إعداد هوية المستخدم
git config --global user.name "Ali070464"
git config --global user.email "ali070464@gmail.com"

# إضافة التوكن كمساعد للتوثيق
git config --global credential.helper '!f() { echo "username=Ali070464"; echo "password=$(cat token.txt)"; }; f'

# تهيئة المستودع إذا لم يكن موجودًا
if [ ! -d .git ]; then
    git init
    git remote add origin https://github.com/ali070464/termux-star070464.git
fi

# تحويل الفرع إلى main
git branch -M main

# إضافة الملفات ورفعها
git add .
git commit -m "Initial commit"
git push -u origin main
