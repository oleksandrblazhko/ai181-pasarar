1. Створіть у БД структури даних, необхідні для роботи повноважного керування доступом.

![image](https://user-images.githubusercontent.com/56974924/214847377-dffee284-a24c-4dd2-9929-9a5191d0d730.png)

2. Визначте для кожного рядка таблиці мітки конфіденційності (для кожного рядка свою мітку).

![image](https://user-images.githubusercontent.com/56974924/214848321-bbb13d70-dcce-40dd-950d-1dfc0938b8fe.png)

![image](https://user-images.githubusercontent.com/56974924/214850401-8422bcfe-143a-454a-9d46-0905150fad29.png)

3. Визначте для користувача його рівень доступу.

![image](https://user-images.githubusercontent.com/56974924/214850446-c856e49c-33ce-499c-9fd7-7abde69b894f.png)

4. Створіть нову схему даних.

![image](https://user-images.githubusercontent.com/56974924/214850587-481fc742-ad7f-47b7-b12f-fafc3158e9a5.png)

5. Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка забезпечує SELECT-правила повноважного керування доступом для користувача.

![image](https://user-images.githubusercontent.com/56974924/214850992-e7689b69-6265-4034-9a30-2b6d47791201.png)

![image](https://user-images.githubusercontent.com/56974924/214852224-a2cfed34-aaec-403f-b32f-366a7dfde373.png)

![image](https://user-images.githubusercontent.com/56974924/214852386-d149d5b0-a781-4749-896f-e2c67328f421.png)

Користувач andrey не має доступу до таблиці student, але має доступ до 2 рядків через представення, міткі конфіденційності яких 2 та 1

6. Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом для користувача.

![image](https://user-images.githubusercontent.com/56974924/214853738-a80ad383-9a84-4350-b297-1304aa36e28a.png)

![image](https://user-images.githubusercontent.com/56974924/214853771-67712898-d271-433f-8aa6-143d753a2ab3.png)

![image](https://user-images.githubusercontent.com/56974924/214855172-03fa31e9-d244-47db-90a2-dc64f79d249d.png)

7. Перевірте роботу механізму повноважного керування, виконавши операції
SELECT, INSERT, UPDATE, DELETE

![image](https://user-images.githubusercontent.com/56974924/214856931-1554c93d-9d16-4c45-8680-bba869807139.png)
