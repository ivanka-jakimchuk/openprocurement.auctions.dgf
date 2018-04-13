��    a      $              ,  -   -     [  m   s  7   �       ?   -  �   m  A   �     6  "   P  '   s     �  :   �     �  ,   �  -   )	     W	  5   j	  >   �	     �	     �	     
     
  	   ?
  8   I
  G   �
     �
  >   �
  B     V   b    �  �   �  ^   �  N     �   ^  /     q   E  #   �  S   �  +   /  J   [  +   �  3   �  )     .   0  -   _  M   �     �  �   �  (   �  �   �     z     �  {   �  i   *  r   �  q        y  "   �     �  )   �     �  3     t   6     �  �  �  �   �  &   N  �  u  ~   H  �   �  W   m  K   �  �        �  #   �     �      �          0  %   G  9   m  .   �  ;   �  �     �   �  S   s   �   �   �   �!  B    "  �   c"  �   �"  W   �#  e   �#  �   H$  �   %  �  �%  J   �'  /   �'  �   	(  v   �(  -   n)  j   �)  �   *  �   �*  9   I+  >   �+  :   �+  @   �+  ]   >,     �,  u   �,  J   !-  '   l-  R   �-  l   �-  3   T.     �.  #   �.  2   �.  #   �.  P   #/  p   t/     �/  \   0  k   ^0  �   �0  �  �1  �  S3  �   �4  �   �5  C  p6  J   �7  �   �7  9   �8  u   	9  J   9  �   �9  <   �:  �   �:  R   D;  J   �;  I   �;  �   ,<  '   �<  3  �<  >   
>  6  I>  '   �?  A   �?  �   �?  �   �@  �   �A  �   �B  :   gC  ;   �C     �C  A   �C  )   9D  v   cD  �   �D     �E  $  �E  �   �H  P   fI    �I  C  �L  �   N  �   O  �   �O  !  /P     QQ  D   bQ  1   �Q  T   �Q  1   .R  -   `R  s   �R  ^   S  ]   aS  e   �S    %T  #  =U  �   aV  �   �V  �   �W  a   RX  �   �X  8  �Y  �   �Z  �   q[    \  �   *]   Activating the request and cancelling auction Add third illustration: After auction is scheduled anybody can visit it to watch. The auction can be reached at `Auction.auctionUrl`: After the competitive auction two `awards` are created: And activate a bid: And again we can confirm that there are two documents uploaded. And again we have `201 Created` response code, `Location` header and body with extra `id`, `auctionID`, and `dateModified` properties. And bidders can find out their participation URLs via their bids: And disqualify candidate: And indeed we have 2 auctions now. And one can retrieve the question list: And upload proposal document: And we can see that it is overriding the original version: Auction Bidder can register a bid in `draft` status: Cancel the auction with the reasons prepared. Cancelling auction Change the document description and other properties: Checking the listing again reflects the new modification date: Confirming qualification Contract registration Creating auction Disqualification of a candidate Enquiries Error states that no `data` has been found in JSON body. Error states that the only accepted Content-Type is `application/json`. Exploring basic rules Fill it with the protocol describing the cancellation reasons. Filling cancellation with protocol and supplementary documentation For the best effect (biggest economy) auction should have multiple bidders registered: If the second highest bidder has a bid that is less than the starting price + minimal step, two awards are created, with one of them receiving a `pending` status and undergoing the qualification procedure, and the other (with an invalid bid) automatically becoming `unsuccessful`. If the two highest bidders have invalid bids (lower than auction starting price + minimal step), the awards will not be created at all, and the qualification procedure will automatically receive the "unsuccessful" status. In case of manual disqualification, the organizer has to upload file with cancellation reason: In case we made an error, we can reupload the document over the older version: In order to specify illustration display order, `index` field can be used (for details see :ref:`document`). Since this illustration should be displayed first, it has ``"index": 1``. It is possible to check the uploaded documents: It is the organizer's duty to upload and confirm the protocol, as well as to switch the award to `active` status. Just invoking it reveals empty set. Let's access the URL of the created object (the `Location` header of the response): Let's check what auction registry contains: Let's create auction with the minimal data set (only required properties): Let's satisfy the Content-type requirement: Let's see the list of all added contract documents: Let's see the list of contract documents: Let's see what listing of auctions reveals us: Let's try exploring the `/auctions` endpoint: Let's update auction by supplementing it with all other essential properties: Modifying auction Note that `index` of the third illustration is the same as for the second illustration: ``"index": 2``. In such cases firstly will be displayed illustration that was uploaded earlier. Now let's attempt creating some auction: Only the request that has been activated (3rd step above) has power to cancel auction.  I.e.  you have to not only prepare cancellation request but to activate it as well. Or an individual answer: Organizer can answer them: Organizer can cancel auction anytime (except when auction has terminal status e.g. `unsuccesfull`, `canceled`, `complete`). Organizer can upload PDF files into the created auction. Uploading should follow the :ref:`upload` rules. Organizer can upload illustration files into the created auction. Uploading should follow the :ref:`upload` rules. Organizer can upload second illustration. This illustration should be displayed second, so it has ``"index": 2``. Prepare cancellation request. Preparing the cancellation request Qualification Refusal of waiting by another participant Registering bid See :ref:`cancellation` data structure for details. See the `Bid.participationUrl` in the response. Similar, but different, URL can be retrieved for other participants: Signing contract Success! Now we can see that new object has been created. Response code is `201` and `Location` response header reports the location of the created object.  The body of response reveals the information about the created auction: its internal `id` (that matches the `Location` segment), its official `auctionID` and `dateModified` datestamp stating the moment in time when auction has been last modified. Pay attention to the `procurementMethodType`. Note that auction is created with `active.tendering` status. The candidate has **20 business days after becoming a candidate** to conclude a contract with the bank based on the results of electronic auction. The following steps should be applied: The organizer **must** upload and confirm the auction protocol `auctionProtocol` and add it to the award within **4 business days after the start of the qualification procedure**. The candidate still has an ability to upload the protocol, but it is neither mandatory, nor sufficient to move to the next status. If the auction protocol has not been uploaded up to the end of `verificationPeriod`, the `award` is automatically transferred to the `unsuccessful` status. The previous auction contained only required fields. Let's try creating auction with more data (auction has status `created`): The second candidate (participant that has submitted the second highest valid bid at the auction) can refuse to wait for the disqualification of the first candidate: The single array element describes the uploaded document. We can upload more documents: There are two more scenarios that can happen after the competitive auction: There is a possibility to set custom contract signature date. If the date is not set it will be generated on contract registration. You can register contract: Tutorial Upload new version of the document: Upload the file contents: Uploading contract documentation Uploading documentation Uploading illustration We can add another contract document: We can check that there are three uploaded illustrations. We can check whether illustration is uploaded. We can see the same response we got after creating auction. We do see the auction's internal `id` (that can be used to construct full URL by prepending `https://api-sandbox.ea.openprocurement.org/api/0/auctions/`) and its `dateModified` datestamp. We see the added properies have merged with existing auction data. Additionally, the `dateModified` property was updated to reflect the last modification datestamp. When auction is in `active.tendering` status, interested parties can ask questions: Within **20 business days after becoming a candidate** he/she must provide payment and organizer has the same time to confirm the payment. Otherwise, the award will automatically become "unsuccessful": Within 20 business days since becoming candidate a new candidate must confirm qualification with steps described above (:ref:`Qualification`). You can upload contract documents. Let's upload contract document: You should pass `reason`, `status` defaults to `pending`. `id` is autogenerated and passed in the `Location` header of response. `201 Created` response code and `Location` header confirm document creation. We can additionally query the `documents` collection API endpoint to confirm the action: `201 Created` response code and `Location` header confirm that document has been added. `201 Created` response code and `Location` header confirm that the second document has been uploaded. for the first candidate (a participant that has submitted the highest valid bid at the auction) - initially has a `pending` status and awaits auction protocol to be uploaded by the organizer; for the second candidate (a participant that has submitted the second highest valid bid at the auction)- initially has a `pending.waiting` status. Project-Id-Version: openprocurement.auctions.dgf 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-12 15:36+0300
PO-Revision-Date: 2017-02-16 14:09+0200
Last-Translator: greg <greg@quintagroup.com>
Language: uk
Language-Team: Ukrainian <support@quintagroup.com>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Активація запиту та скасування аукціону Додаємо третю ілюстрацію: Після того, як аукціон заплановано, будь-хто може його відвідати для перегляду. Аукціон можна подивитись за допомогою `Auction.auctionUrl`: Після конкурентних торгів, створюються два 'протоколи розгляду': І активувати пропозицію: І знову можна перевірити, що є два завантажених документа. І знову код відповіді `201 Created`,  заголовок `Location` і тіло з додатковим `id`, `auctionID`, та властивість `dateModified`. Учасники можуть дізнатись свої URL-адреси для участі через свої пропозиції: Та дискваліфікувати кандидата: Дійсно, в нас зараз є дві аукціони. Можна отримати список запитань: І завантажити документ пропозиції: І ми бачимо, що вона перекриває оригінальну версію: Аукціон Учасник може зареєструвати пропозицію у статусі `draft` (чернетка): Скасуйте закупівлю через подані причини Скасування закупівлі Зміна опису документа та інших властивостей: Ще одна перевірка списку відображає нову дату модифікації: Підтвердження кваліфікації Реєстрація угоди Створення аукціону Дискваліфікація кандидата. Уточнення (питання) Помилка вказує, що `data` не знайдено у тілі JSON. Помилка вказує, що єдиний прийнятний тип вмісту це `application/json`. Базові правила Наповніть його протоколом про причини скасування. Наповнення протоколом та іншою супровідною документацією Для найкращого результату (найбільшої економії) аукціон повинен мати багато зареєстрованих учасників. Якщо друга найвища ставка в аукціоні є меншою ніж початкова ціна + мінімальний крок, створюються два аварди, один з них отримує статус `pending` та проходить процедуру кваліфікації, а другий (з інвалідною ставкою) автоматично зразу отримує статус `unsuccessful`. У випадку якщо дві найвищі ставки в аукціоні є меншими ніж стартова ціна аукціону + мінімальний крок, аварди в такому випадку формуватися не будуть взагалі, а процедура кваліфікації автоматично отримає статус неуспішної ("unsuccessful").  У випадку ручної дискваліфікації, організатор повинен завантажити файл з поясненням причини дискваліфікації кандидата. Якщо сталась помилка, ми можемо ще раз завантажити документ поверх старої версії: Для того, щоб вказати порядок відображення ілюстрацій, використовується поле `index` (див. :ref:`document`). Оскільки ця ілюстрація повинна бути відображена першою, то вказується ``"index": 1``. Можна перевірити завантажені документи: Обов'язком організатора в цей час є завантажити протокол аукціону в авард та змінити статус цього аварду на `active`. При виклику видає пустий набір. Використаємо URL створеного об’єкта (заголовок відповіді `Location`): Перевіримо, що містить реєстр аукціонів: Створимо аукціон з мінімально допустимим набором даних (тільки параметри обовязкові для заповнення) : Задовільнимо вимогу типу вмісту: Тепер переглянемо знову усі документи пов’язані із укладанням угоди: Переглянемо список завантажених документів: Подивимось, що показує список аукціонів: Подивимось як працює точка входу `/auctions`: Оновимо аукціон шляхом надання йому усіх інших важливих властивостей: Модифікація аукціону Зверніть увагу, що параметр `index` третьої ілюстрації такий же як і у другої:  ``"index": 2``. У таких випадках спочатку відображатиметься ілюстрація з ранішою датою публікації. Спробуймо створити новий аукціон: Запит на скасування, який не пройшов активації (3-й крок), не матиме сили, тобто, для скасування закупівлі буде обов’язковим не тільки створити заявку, але і активувати її. або окрему відповідь: Організатор може на них відповісти: Організатор (ліквідатор) може скасувати аукціон на будь-якому етапі окрім аукціону в термінальних статусах (unsuccessful, cancelled, complete). Замовник може завантажити PDF файл у створений аукціон. Завантаження повинно відбуватись згідно правил :ref:`upload`. Організатор може завантажити файли з ілюстраціями у створений аукціон. Завантаження повинно відповідати правилам :ref:`upload`. Організатор може завантажити ще одну ілюстрацію. Ця ілюстрація повинна бути відображена другою, тому має параметр ``"index": 2``. Приготуйте запит на скасування. Формування запиту на скасування Кваліфікація Відмова очікування іншим учасником Реєстрація пропозиції Див. структуру запиту :ref:`cancellation` для більш детальної інформації. Дивіться на `Bid.participationUrl` у відповіді. Схожу, але іншу, URL-адресу можна отримати для інших учасників. Підписання угоди Успіх! Тепер ми бачимо, що новий об’єкт було створено. Код відповіді `201` та заголовок відповіді `Location` вказує місцерозташування створеного об’єкта. Тіло відповіді показує інформацію про створений аукціон, його внутрішнє `id` (яке співпадає з сегментом `Location`), його офіційне `auctionID` та `dateModified` дату, що показує час, коли аукціон востаннє модифікувався. Зверніть увагу на `procurementMethodType`, а також на те, що аукціон створюється зі статусом `active.tendering`. The candidate has **20 business days after becoming a candidate** to conclude a contract with the bank based on the results of electronic auction. Для цього потрібно виконати наступні кроки: Організатор **повинен** завантажити та підтвердити протокол аукціону (`auctionProtocol`) в авард протягом **4-х робочих днів після початку процедури кваліфікації**. Кандидат також має можливість завантажити протокол, але це необов'язково та недостатньо для переходу аварда в наступний статус. Якщо протокол аукціону не завантажено і підтверджено до кінця періоду верифікації `verificationPeriod`, авард автоматично переводиться в статус `unsuccessful`. Попередній аукціон був створений лише з обов’язковими полями. Тепер додамо аукціон з максимально допустимим набором даних при створенні (аукціон повинен бути у статусі `created`). Другий кандидат (учасник, чия ставка є другою найвищою валідною ставкою) може відмовитись очікувати дискваліфікації першого кандидата: Один елемент масиву описує завантажений документ. Ми можемо завантажити більше документів: Існує ще два сценарії, що можуть мати місце після закінчення аукціону: Є можливість встановити дату підписання договору. Якщо дата не встановлена, то вона буде згенерована під час реєстрації угоди. Ви можете зареєструвати угоду: Туторіал Завантаження нової версії документа: Завантаження вмісту файлу: Завантаження документів щодо укладання угоди Завантаження документації Завантаження ілюстрації Тепер спробуємо додати ще один документ щодо укладанням угоди: Можемо перевірити, що є три завантажені ілюстрації. Ми можемо перевірити, чи завантажилась ілюстрація. Ми бачимо ту ж відповідь, що і після створення аукціону. Ми бачимо внутрішнє `id` аукціону (що може бути використано для побудови повної URL-адреси, якщо додати `http://api-sandbox.openprocurement.org/api/0/auctions/`) та його `dateModified` дату. Ми бачимо, що додаткові властивості об’єднані з існуючими даними аукціону. Додатково оновлена властивість `dateModified`, щоб відображати останню дату модифікації. Коли закупівля має статус `active.tendering`, зацікавлені сторони можуть задавати питання: Within **20 business days after becoming a candidate** he/she must provide payment and organizer has the same time to confirm the payment. Otherwise, the award will automatically become "unsuccessful": Within 20 business days since becoming candidate a new candidate must confirm qualification with steps described above (:ref:`Qualification`). Спробуємо завантажити документ пов’язаний з угодою: Ви повинні передати змінні `reason`, `status` у стані `pending`. `id` генерується автоматично і повертається у додатковому заголовку відповіді `Location`: Код відповіді `201 Created` та заголовок `Location` підтверджують, що документ було створено. Додатково можна зробити запит точки входу API колекції `документів`, щоб підтвердити дію: Код відповіді `201 Created` та заголовок `Location` підтверджують, що документ додано. Код відповіді `201 Created` та заголовок `Location` підтверджують, що ще один документ було додано. для першого кандидата (учасник з найвищою валідною ставкою в аукціоні) - початково отримує статус `pending` та очікує завантаження протоколу організатором; для другого кандидата (учасник з другою найбільшою валідною ставкою в аукціоні) - початково отримує статус `pending.waiting`. 