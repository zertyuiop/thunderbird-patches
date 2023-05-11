:: "Standard" lessecho in Windows gets confused by non-ASCII characters, hence we use Mozilla's version.
set lecho=C:\mozilla-build\msys\bin\lessecho.exe
:: Script will only work if Windows system locale is set to UTF-8 !!

:: Original strings:
:: groupButtonTooltipText=Add a new group
%lecho% "groupButtonTooltipText=Dodaj nową grupę" >> chrome\pl\locale\pl\messenger\search.properties

:: Original string:
:: <!ENTITY folderContextStartupFolder.label "Startup Folder">
%lecho% "<!ENTITY folderContextStartupFolder.label \"Folder początkowy\">" >> chrome\pl\locale\pl\messenger\messenger.dtd

:: Original strings:
:: <!ENTITY quickFilterBar.untagged.tooltip "Show messages with no tags">
:: <!ENTITY quickFilterBar.tagged.tooltip "Show messages with one or more tags. Right-click to clear individual tag selection.">
%lecho% "<!ENTITY quickFilterBar.untagged.tooltip \"Pokaż wiadomości bez etykiet\">" >> chrome\pl\locale\pl\messenger\quickFilterBar.dtd
%lecho% "<!ENTITY quickFilterBar.tagged.tooltip \"Pokaż wiadomości posiadające jedną lub więcej etykietę. Kliknij prawym przyciskiem myszy, aby wyczyścić wybór poszczególnych etykiet.\">" >> chrome\pl\locale\pl\messenger\quickFilterBar.dtd

:: Original strings:
:: enable-gloda-search-encrypted-label =
::     .label = Enable search in encrypted messages (stores decrypted copy locally)
%lecho% "enable-gloda-search-encrypted-label =" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Włącz wyszukiwanie w zaszyfrowanych wiadomościach (przechowuje lokalnie odszyfrowaną kopię)" >> localization\pl\messenger\preferences\preferences.ftl

:: Original strings:
:: menuitem-recent-files =
::     .label = Recent File(s)…
:: context-menuitem-recent-files =
::     .label = Attach Recent File(s)…
%lecho% "menuitem-recent-files ="             >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Ostatnie pliki…"        >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "context-menuitem-recent-files ="     >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Załącz ostatnie pliki…" >> localization\pl\messenger\messengercompose\messengercompose.ftl

:: Original strings:
:: <!ENTITY multilineAllFolders.label "Multi-line View On All Folders">
%lecho% "<!ENTITY multilineAllFolders.label \"Widok wielu linii we wszystkich folderach\">" >> chrome\pl\locale\pl\messenger\messenger.dtd

:: Original strings:
:: mail-multiline-all-folders =
::     .label = Multi-line View On All Folders
:: mail-multiline-individual-folders =
::     .label = Multi-line View Via Subject Column
:: mail-multiline-no-folders =
::     .label = No Multi-line View
%lecho% "mail-multiline-all-folders ="                             >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Widok wielu wierszy we wszystkich folderach" >> localization\pl\messenger\menubar.ftl
%lecho% "mail-multiline-individual-folders ="                      >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Widok wielu wierszy w wybranych folderach"   >> localization\pl\messenger\menubar.ftl
%lecho% "mail-multiline-no-folders ="                              >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Bez widoku wielu wierszy"                    >> localization\pl\messenger\menubar.ftl

:: Original strings:
:: compose-send-plain-or-html-option =
::     .label = Plain Text or HTML
::     .accesskey = O
:: compose-send-plain-or-html-description = If no styling is used in the message, send Plain Text. Otherwise, send HTML only.
%lecho% "compose-send-plain-or-html-option =" >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "    .label = Zwykły tekst czy HTML"  >> localization\pl\messenger\preferences\preferences.ftl
%lecho% "compose-send-plain-or-html-description = Jeśli wiadomość nie zawiera żadnych stylów, wyślij zwykły tekst. W przeciwnym razie, wyślij tylko HTML." >> localization\pl\messenger\preferences\preferences.ftl

%lecho% "compose-send-plain-or-html-menu-item =" >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .label = Zwykły tekst czy HTML"     >> localization\pl\messenger\messengercompose\messengercompose.ftl
%lecho% "    .accesskey = O"                     >> localization\pl\messenger\messengercompose\messengercompose.ftl

:: Fix missing ! in the about box.
sed -i -e 's/ENTITY helpus.end.*""/ENTITY helpus.end "!"/' chrome\pl\locale\pl\messenger\aboutDialog.dtd

:: Movemail
:: Strings from https://hg.mozilla.org/l10n-central/pl/file/619e43c2d9f9374c770f964c810182d978b5d74e/mail/chrome/messenger/localMsgs.properties
%lecho% "movemailCantOpenSpoolFile=Otworzenie pliku poczty (%S) było niemożliwe." >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantCreateLock=Utworzenie pliku blokującego %S było niemożliwe. Dostęp do poczty Movemail wymaga możliwości tworzenia plików blokujących w systemowym katalogu poczty. W przypadku większości systemów wystarczy ustawić prawa dostępu do systemowego katalogu poczty na 01777." >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantDeleteLock=Usunięcie pliku blokującego %S było niemożliwe."      >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantTruncateSpoolFile=Skrócenie pliku poczty %S było niemożliwe."    >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailSpoolFileNotFound=Odnalezienie pliku poczty było niemożliwe."        >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "movemailCantParseSpool=Wystąpił błąd podczas wczytywania pliku „%S”. Plik poczty może być uszkodzony lub nieprawidłowy." >> chrome\pl\locale\pl\messenger\localMsgs.properties
%lecho% "serverType-movemail=Unix Movemail"                                           >> chrome\pl\locale\pl\messenger\messenger.properties

%lecho% "account-action-add-movemail-account =" >> localization\pl\messenger\accountManager.ftl
%lecho% "    .label = Dodaj konto Movemail…"    >> localization\pl\messenger\accountManager.ftl
%lecho% "    .accesskey = M"                    >> localization\pl\messenger\accountManager.ftl
%lecho% "file-new-movemail-account ="           >> localization\pl\messenger\menubar.ftl
%lecho% "    .label = Konto Movemail…"          >> localization\pl\messenger\menubar.ftl
%lecho% "    .accesskey = M"                    >> localization\pl\messenger\menubar.ftl
