��    P      �                /         M     n     |     �  5   �  �   �  3   h  2   �     �  -   �               .     G     U  7   s     �  D   �          *  2   ?  f   r  f   �     @	     `	     }	  $   �	      �	     �	     �	  /   
  *   N
  $   y
  p   �
  A     "   Q  "   t  5   �  ,   �     �             �   =  D   �  l     .   r     �  K   �  �   	  #   �  $   �  �   �  h   �  �     6   �  D   �  ^   >     �     �  D   �          ,  !   3  %   U     {  3   �     �     �     �  V   �  G   Q  �   �  Q   !  �   s  �      U   �  �     ?   �    �  _   �  -   %     S  -   a  $   �  r   �    '  ?   -  n   m     �  R   �  .   7     f  X   �  #   �  :     K   =  :   �  �   �  -   L  (   z  @   �  [   �  �   @  .   �  +      )   G   3   q   /   �   .   �   .   !  }   3!  H   �!  X   �!  �   S"  �   K#  ?   $  J   K$  c   �$  �   �$  
   �%  @   �%  @   �%  �   #&  z   �&  �   Q'  T   (  %   s(  �   �(  �   .)  <   �)  F   *  W  f*  w   �+  �   6,  J   �,  �   5-  �   �-  1   ].  -   �.  �   �.     P/  
   i/  Y   t/  [   �/  $   *0  u   O0  D   �0  *   
1     51  �   F1  l   �1  �   72  v   '3  �   �3  (  |4  �   �5  �   @6  \   '7   :ref:`Guarantee`, editable during enquiryPeriod :ref:`ProcuringEntity`, required :ref:`period` :ref:`period`, read-only :ref:`period`, required :ref:`value`, required, editable during enquiryPeriod A list of all bids placed in the auction with information about participants, their proposals and other qualification documentation. A web address where auction is accessible for view. All qualifications (disqualifications and awards). Auction Auction number in the Deposit Guarantee Fund. Auction period (auction) Auction status. Awarding process period. Bid guarantee Cancelled auction (cancelled) Complaints to auction conditions and their resolutions. Complete auction (complete) Contains 1 object with `active` status in case of cancelled Auction. Detailed auction description. Features of auction. Historical changes to `Auction` object properties. Identification number of the auction (also referred to as `lot`) in the XLS of Deposit Guarantee Fund. In case of the field has been remained blank, the workflow will be similar to the auction with 2 bids. List of :ref:`Contract` objects List of :ref:`award` objects List of :ref:`bid` objects List of :ref:`cancellation` objects. List of :ref:`complaint` objects List of :ref:`document` objects List of :ref:`question` objects List of :ref:`revision` objects, auto-generated List that contains single item being sold. Organization conducting the auction. Period for the procedure to be edited. Organizer can optionally set the value for `rectificationPeriod.endDate`. Period when Auction is conducted. `startDate` should be provided. Period when bids can be submitted. Period when questions are allowed. Questions to ``procuringEntity`` and answers to them. Required for `dgfFinancialAssets` procedure. Schema Standstill period (standstill) Tendering period (tendering) The :ref:`cancellation` object describes the reason of auction cancellation and contains accompanying documents  if there are any. The auction identifier to refer auction to in "paper" documentation. The field that indicates the minimal number of qualified bids. The possible values for the field are 1 or 2. The minimal step of auction. Validation rules: This field is multilingual: Total available auction budget. Bids lower than ``value`` will be rejected. Ukrainian by default - До участі допускаються лише ліцензовані фінансові установи. Unsuccessful auction (unsuccessful) Winner qualification (qualification) You can also fill in the field, assigning the value "1". This will show that the only one bidder is needed for the procedure to be successful. Therewith the auction is omitted and that bid turns to a qualified award. ``eligibilityCriteria_en`` (English) - Only licensed financial institutions are eligible to participate. ``eligibilityCriteria_ru`` (Russian) - К участию допускаются только лицензированные финансовые учреждения. `amount` should be greater than `Auction.value.amount` `currency` should either be absent or match `Auction.value.currency` `valueAddedTaxIncluded` should either be absent or match `Auction.value.valueAddedTaxIncluded` integer, optional list of :ref:`Feature` objects list of :ref:`item` objects, required, editable during enquiryPeriod minNumberOfQualifiedBids string string, auto-generated, read-only string, editable during enquiryPeriod string, multilingual string, multilingual, editable during enquiryPeriod string, multilingual, read-only string, read-only url |ocdsDescription| A list of all the companies who entered submissions for the auction. |ocdsDescription| All documents and attachments related to the auction. |ocdsDescription| AuctionID should always be the same as the OCID. It is included to make the flattened data structure more convenient. |ocdsDescription| The date or period on which an award is anticipated to be made. |ocdsDescription| The entity managing the procurement, which may be different from the buyer who is paying / using the items being procured. |ocdsDescription| The goods and services to be purchased, broken into line items wherever possible. Items should not be duplicated, but a quantity of 2 specified instead. |ocdsDescription| The period during which enquiries may be made and will be answered. |ocdsDescription| The period when the auction is open for submissions. The end date is the closing date for auction submissions. |ocdsDescription| The total estimated value of the procurement. Project-Id-Version: openprocurement.auctions.dgf 0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-13 15:36+0300
PO-Revision-Date: 2016-10-19 12:51+0200
Last-Translator: Zoriana Zaiats <sorenabell@quintagroup.com>
Language: uk
Language-Team: Ukrainian <support@quintagroup.com>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 :ref:`Guarantee`, доступне для редагування впродовж enquiryPeriod :ref:`ProcuringEntity`, обов'язково :ref:`period` :ref:`period`, лише для читання :ref:`period`, обов'язково :ref:`value`, обов'язково, доступне для редагування впродовж enquiryPeriod Список усіх пропозицій поданих до аукціону разом із інформацією про учасників аукціону, їхні пропозиції та інша кваліфікаційна документація. Веб-адреса для перегляду аукціону. Всі кваліфікації (дискваліфікації та визначення переможця). Auction Номер аукціону у Фонді Гарантування Вкладів. Період аукціону (аукціон) Статус аукціону. Період, коли відбувається визначення переможця. Гарантійний внесок Відмінений аукціон (відмінений) Скарги на умови аукціону та їх вирішення. Завершений аукціон (завершений) Містить 1 об’єкт зі статусом `active` на випадок, якщо аукціон буде відмінено. Детальний опис аукціону. Властивості аукціону. Зміни властивостей об’єктів `Auction`. Номер аукціону (або `лота`) у XLS Фонду Гарантування. Якщо поле залишилось незаповненим, то порядок дій такий же, як і при наявності двох учасників. Список об’єктів :ref:`Contract` Список об’єктів :ref:`award` Список об’єктів :ref:`bid` Список об’єктів :ref:`cancellation`. Список об’єктів :ref:`complaint` Список об’єктів :ref:`document` Список об’єктів :ref:`question` Список об’єктів :ref:`revision`, генерується автоматично, лише для читання Список містить елементи, що продаються. Організатор (організація, що проводить аукціон). Період, упродовж якого редагування процедури є доступним. Організатор, на вибір, може самостійно задати дату закінчення цього періоду. Період, коли проводиться аукціон. Значення `startDate` (дата початку торгів) повинно бути вказано обов'язково. Період, коли подаються пропозиції. Період, коли дозволено задавати питання. Питання до організатора ``procuringEntity`` і відповіді на них. Обов'язково для `dgfFinancialAssets` процедури (продаж права вимоги за кредитними договорами). Схема Пропозиції розглянуто (розглянуто) Очікування пропозицій (пропозиції) Об’єкт :ref:`cancellation` описує причину скасування аукціону та надає відповідні документи, якщо такі є. Ідентифікатор аукціону, щоб знайти його у "паперовій" документації Поле, що вказує на мінімальну кількість кваліфікованих пропозицій. Можливі значення, що можна присвоїти: 1 або 2. Мінімальний крок аукціону. Правила валідації: Це поле багатомовне: Повний доступний бюджет аукціону. Пропозиції, що нижчі за ``value`` будуть відхилені. За замовчуванням українською мовою - До участі допускаються лише ліцензовані фінансові установи. Аукціон не відбувся (не відбувся) Кваліфікація переможця (кваліфікація) При присвоєнні полю значення "1" пропозиція учасника торгів автоматично стає award'ом, що пройшов етап кваліфікації. Сам же аукціон в такому випадку відсутній. Процедура вважається успішною. ``eligibilityCriteria_en`` (англійською) - Only licensed financial institutions are eligible to participate. ``eligibilityCriteria_ru`` (російською) - К участию допускаются только лицензированные финансовые учреждения. `amount` повинна бути  більша за `Auction.value.amount` Значення `currency` повинно бути або відсутнім, або співпадати з `Auction.value.currency` Значення `valueAddedTaxIncluded` повинно бути або відсутнім, або співпадати з `Auction.value.valueAddedTaxIncluded` ціле число, не обов’язково список об’єктів :ref:`Feature` список об’єктів :ref:`item`, обов’язково, доступне для редагування впродовж enquiryPeriod minNumberOfQualifiedBids рядок рядок, генерується автоматично, лише для читання рядок, доступний для редагування впродовж enquiryPeriod рядок, багатомовний рядок, багатомовний, доступний для редагування впродовж enquiryPeriod рядок, багатомовний, лише для читання рядок, лише для читання URL-адреса |ocdsDescription| Список усіх компаній, які подали заявки для участі в аукціоні. |ocdsDescription| Всі документи та додатки пов’язані із аукціоном. |ocdsDescription| Ідентифікатор аукціону `AuctionID` повинен завжди співпадати з OCID. Його включають, щоб зробити структуру даних більш зручною. |ocdsDescription| Дата або період, коли очікується визначення переможця. |ocdsDescription| Об’єкт, що управляє закупівлею. Він не обов’язково є покупцем, який платить / використовує закуплені елементи. |ocdsDescription| Товари та послуги, що будуть закуплені, поділені на спискові елементи, де це можливо. Елементи не повинні дублюватись, замість цього вкажіть кількість 2. |ocdsDescription| Період, коли можна задати питання (уточнення) та отримати відповіді на них. |ocdsDescription| Період, коли аукціон відкритий для подачі пропозицій. Кінцева дата - це дата, коли перестають прийматись пропозиції. |ocdsDescription| Загальна кошторисна вартість закупівлі. 