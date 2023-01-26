2. Створіть термінальну консоль psql через утиліту командного рядка вашої ОС та встановіть з’єднання з БД postgres від імені користувача-адміністратора postgres                

![image](https://user-images.githubusercontent.com/56974924/214703779-411767fd-4f79-463c-9b36-41065e1d3d1a.png)

3. Зареєструйте нового користувача в СКБД PostgreSQL, назва якого співпадає з вашим ім'ям, наприклад ivan, і довільним паролем.

![image](https://user-images.githubusercontent.com/56974924/214704112-a37d568c-22cd-4304-a0f5-c9c3c3571e7e.png)

4. Створіть роль в СКБД PostgreSQL (назва співпадає з вашим прізвищем латинськими літерами) і надайте новому користувачеві можливість наслідувати цю роль.

![image](https://user-images.githubusercontent.com/56974924/214704389-fd6aeff1-8aed-458f-9082-73eba646d20b.png)

5. Створіть реляційну таблицю з урахуванням варіанту з таблиці 2.1 від імені користувача-адміністратора.

![image](https://user-images.githubusercontent.com/56974924/214704551-ec280947-9fbe-4b3a-aee4-e909f3457456.png)

6. Внесіть один рядок в таблицю, використовуючи команду insert into ..., відповідно до варіанту.

![image](https://user-images.githubusercontent.com/56974924/214704646-2111285c-2ecf-4d45-8d9c-77f38f70eb33.png)

7. Додатково створіть ще одну термінальну консоль psql та та встановіть з’єднання з БД postgres від імені нового користувача.

![image](https://user-images.githubusercontent.com/56974924/214704978-6b2363ef-b7aa-401a-b3ba-38ac072c05f7.png)

8. Від імені вашого користувача виконайте запит на отримання даних з таблиці (select * from таблиця). Запротоколюйте результат виконання команди.

![image](https://user-images.githubusercontent.com/56974924/214705126-b7cb5b42-4e04-4577-8b87-92eadfc13f35.png)

9. Встановіть повноваження на читання таблиці новому користувачеві.

![image](https://user-images.githubusercontent.com/56974924/214705285-88af9336-c302-4cea-95c7-ffb5f92efcb3.png)

10. Повторіть крок 8.

![image](https://user-images.githubusercontent.com/56974924/214705443-12055b40-3069-4cba-ac2a-4b81d50233fc.png)

11. Зніміть повноваження на читання таблиці для нового користувача.

![image](https://user-images.githubusercontent.com/56974924/214705561-d365b0e8-5eb0-48b9-b716-56d893abfe71.png)

12. Повторіть крок 8.

![image](https://user-images.githubusercontent.com/56974924/214705608-3622ac03-9b59-4190-9d7d-7d6349389323.png)

13. Створіть команду оновлення даних таблиці (UPDATE) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди.

![image](https://user-images.githubusercontent.com/56974924/214837938-0754d640-f317-48c9-909b-3bbea413a988.png)

14. Встановіть повноваження на оновлення таблиці новому користувачеві.

![image](https://user-images.githubusercontent.com/56974924/214838034-b8df2fae-cea8-47bb-b4a3-f545858dba43.png)

15. Повторіть крок 13.

![image](https://user-images.githubusercontent.com/56974924/214838431-f675be98-b8ed-4bcc-a8a3-9917cbb7e497.png)

16. Створіть команду видалення запису таблиці (DELETE) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди.

![image](https://user-images.githubusercontent.com/56974924/214838789-3f69e67f-cf2a-4148-ac9a-cdf272d4a268.png)

17. Встановіть повноваження на видалення таблиці новому користувачеві.

![image](https://user-images.githubusercontent.com/56974924/214838894-348b7b25-1e94-4068-88df-c9613b48ea28.png)

18. Повторіть крок 16.

![image](https://user-images.githubusercontent.com/56974924/214839013-e2206d20-835c-4f43-8601-7afd5ff1c6c7.png)

19. Зніміть всі повноваження з таблиці для нового користувача.

![image](https://user-images.githubusercontent.com/56974924/214839099-a2f0b30d-b7ca-4338-a7b4-e31f613b8e29.png)

20. Створіть команду внесення запису в таблицю (INSERT) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди.

![image](https://user-images.githubusercontent.com/56974924/214839398-bb7b99f6-af2c-4489-8dad-d2a87f62661b.png)

21. Встановіть повноваження на внесення даних до таблиці для ролі.

![image](https://user-images.githubusercontent.com/56974924/214839449-fa007d90-bdf0-486a-b6ec-62fb994e61bb.png)

22. Повторіть крок 20.

![image](https://user-images.githubusercontent.com/56974924/214839586-4e2f5d51-4155-4b41-9a60-eb6b17256813.png)
