<!-- SPDX-License-Identifier: AGPL-3.0-only · Copyright (c) 2026 Jordi Subirós, SBS BIM Consulting -->
<p align="center"><img src="guaitaPDF_social_preview.png" alt="Guaita PDF Edit · SBS BIM Consulting" width="100%"></p>

# Guaita PDF Edit — Manual d'ús

**Versió 7.5** · 🇬🇧 [English version](README_HELP.md) · ← Torna al [README](README.md)

Editor de PDF multidocument en un sol fitxer HTML. No instal·la res, no es connecta a cap servidor i funciona sense Internet: els teus PDF no surten mai del teu ordinador. Inclou edició del contingut original, revisió i signatura, el llenç de nodes Composar, reducció de mida, exportació a DXF i l'analitzador de PDF sospitosos guaitaPDFscan.

## Índex

- [01. Què és](#01-què-és)
- [02. Modes de treball](#02-modes-de-treball)
- [03. Obrir, desar i imprimir](#03-obrir-desar-i-imprimir)
- [04. Pàgines i visualització](#04-pàgines-i-visualització)
- [05. Anotacions i mesura](#05-anotacions-i-mesura)
- [06. Editar el contingut original](#06-editar-el-contingut-original)
- [07. Marcadors](#07-marcadors)
- [08. Revisar i signar](#08-revisar-i-signar)
- [09. Adjunts, capes i propietats](#09-adjunts-capes-i-propietats)
- [10. Composar: nodes](#10-composar-nodes)
- [11. Reduir la mida](#11-reduir-la-mida)
- [12. Exportar a DXF](#12-exportar-a-dxf)
- [13. Analitzar un PDF sospitós (guaitaPDFscan)](#13-analitzar-un-pdf-sospitós-guaitapdfscan)
- [14. Instal·lar com a aplicació](#14-installar-com-a-aplicació)
- [15. Dreceres de teclat](#15-dreceres-de-teclat)
- [16. Preguntes freqüents](#16-preguntes-freqüents)

---

## 01. Què és

- **Local i privat** — Tot es processa al navegador. Cap CDN, cap servidor.
- **Multidocument** — Cada PDF obre una pestanya pròpia; pots copiar pàgines entre documents.
- **Edició i revisió** — Text i imatges originals, anotacions PDF reals, marcadors i signatura digital.
- **Composar** — Llenç de nodes per combinar, triar, ordenar, transformar i dividir pàgines i lots de documents.

Components: pdf.js 3.11.174 (Mozilla, Apache-2.0), pdf-lib 1.17.1, @pdf-lib/fontkit 1.1.1 (MIT), i node-forge per a la signatura, tots incrustats al fitxer.

## 02. Modes de treball

El commutador de la capçalera separa les maneres de treballar:

| Mode | Per a què serveix |
|---|---|
| **Veure** | Navegació, vistes de pàgina, mà, mesura a escala, cerca, exportació i impressió. |
| **Editar** | Eines per famílies (Historial, Pàgines, Contingut, Anotar, Inserir) i, a sota, les opcions de l'eina activa. Les dreceres d'una eina d'edició et porten sols a aquest mode. |
| **Revisar** | Anotacions PDF reals (notes, marques de text, núvols, segells, adjunts) amb llista, filtres i exportació. |
| **Signar** | Signatura digital amb certificat .p12/.pfx, camps de signatura i circuits de signants. |
| **Composar** | Llenç de nodes estil Grasshopper per organitzar documents i pàgines. |
| **Escanejar** | Analitzador de PDF sospitosos guaitaPDFscan, dins un marc aïllat. |

## 03. Obrir, desar i imprimir

1.  **Fitxer › Obre** o arrossega un o diversos PDF a la finestra. Se'n reconeixen també per l'extensió `.pdf`; s'obren ordenats pel nom (`plànol 2` abans de `plànol 10`), amb progrés i un resum final.
2.  Edita (pàgines, anotacions, contingut, marcadors).
3.  **Fitxer › Nou document…** crea un PDF des de zero: pàgines en blanc o una pàgina per imatge (la imatge s'encaixa dins la pàgina, centrada; mida automàtica segons la imatge o un format triat).
4.  **Desa el PDF actual** genera un PDF nou amb tots els canvis.

**Imprimeix** mostra una previsualització que compara la mida del paper amb la del PDF i permet triar paper (A4, A3…), orientació i escala. **Fusiona tots** crea un document amb totes les pestanyes.

## 04. Pàgines i visualització

Les miniatures de l'esquerra permeten seleccionar (Ctrl+clic), reordenar arrossegant, girar, duplicar, extreure, eliminar i inserir pàgines en blanc o d'un altre PDF. La mida de les miniatures canvia arrossegant la vora de la columna o amb Ctrl+roda.

| Vista | Tecla | Detall |
|---|---|---|
| Pàgina única | `1` | La millor per editar. |
| Llibre | `2` | Doble pàgina amb gir de full. |
| Contínua / dues columnes | `3` `4` | Desplaçament vertical. |
| Enquadernada | `5` | Doble pàgina amb llom, ombres i marca de relligat opcional. |
| Anvers-revers | `6` | Costat a costat, per transparència a contrallum amb opacitat regulable, o girant el full per la vora llarga o curta. |
| Organitzador de pàgines | `7` | Totes les pàgines per triar i reordenar arrossegant. |
| Presentació | `Ctrl+L` | Pantalla completa; `Esc` surt. |

### Organitzador de pàgines

Les pàgines arrossegades s'aixequen i segueixen el cursor (en pila amb comptador si en són diverses); les altres s'aparten per obrir el forat on cauran. Hi ha desplaçament automàtic a prop de les vores, `Esc` cancel·la l'arrossegament i pots seleccionar amb una finestra arrossegant sobre l'espai buit (Maj o Ctrl afegeix a la selecció). Cada pàgina mostra el seu format (A4, A3…) i el seu número.

### Colors de pàgina

Clic dret sobre una miniatura › **Color de pàgina…** posa un marc de color a la pàgina (8 colors). A la barra de **Pàgines** hi ha la **llegenda de colors**: pots posar-hi un nom a cada color (p. ex. *Memòria*, *Plànols*, *Pendent*) i fer-la servir de filtre: un clic en un color atenua les altres pàgines (en pots triar diversos); ◀ ▶ salten a la pàgina anterior o següent amb el filtre i ✕ el treu. El color es veu a la vista de llibre i als nodes de Composar, i es desa dins el PDF; només Guaita el llegeix.

### Cintes de marcadors

Cada pàgina amb marcador mostra una cinta vermella de punt de llibre al costat dret, a l'altura de la destinació. En passar-hi per sobre veus el títol i amb un clic s'obre al panell. S'activen a **Visualització › Cintes de marcadors a les pàgines** (vista única, contínues i organitzador).

### Dividir i índex

- **Pàgines › Dividir el document…**: cada N pàgines, per marcadors de primer nivell, per rangs, per pàgines en blanc, per format o per mida màxima. La sortida pot ser un ZIP, descàrregues o pestanyes.
- **Pàgines › Índex a partir dels marcadors…**: genera pàgines A4 editables amb punts guia, números de pàgina (ja comptant l'índex) i enllaços clicables, que també funcionen al mode Veure.

Les pàgines amb /Rotate propi es mostren i es desen girades correctament.

## 05. Anotacions i mesura

Llapis, ressaltador, text, formes, signatura, imatges, marca d'aigua i numeració de pàgines. Hi ha **3 llapis** (translúcids, de gruix variable amb la velocitat) i **2 bolígrafs** (opacs, de gruix constant); cadascun recorda el seu color, gruix i opacitat. Amb **Selecciona** (`V`) mous, escales i gires objectes (amb nansa de gir; `Maj` fa salts de 15°) i en canvies l'ordre o l'opacitat.

Amb el botó dret sobre una anotació, imatge, signatura, segell o camp tens **Aplicar a altres pàgines…**: totes, senars, parells, del mateix format, seleccionades o un rang. Pots triar posició relativa a la vora més propera, absoluta o proporcional, i substituir o eliminar les còpies. A **Capçalera i peu** pots aplicar-ho només a senars o parells; admet els camps `[pàg]` `[total]` `[data]` `[fitxer]`…

### Text in situ i ressaltar text

**Text in situ** (`Maj+T`): clica a la pàgina i escriu directament; clica un text existent per editar-lo, i `Esc` o un clic fora el confirma. **Ressaltar text** (`Maj+H`): arrossega sobre el text de la pàgina per ressaltar-lo; el text continua seleccionable.

### Mida i posició en mil·límetres

Amb una imatge o una pàgina incrustada seleccionada, clic dret › **Mida i posició…** (o el botó de la barra de selecció): amplada i alçada en mm (amb bloqueig de **Proporció**), **Escala** en %, **Posició X/Y** en mm des de l'esquerra i des de dalt, i **Centrar a la pàgina**. El diàleg mostra la mida original, la de la pàgina i els marges dret i inferior, i avisa en vermell si l'objecte surt de la pàgina.

### Incrustar una pàgina PDF

**Insereix › Pàgina PDF…** incrusta una pàgina d'un altre PDF (o de qualsevol document obert) dins la pàgina actual, com a **vector** (conserva text i línies) i amb retall: arrossega sobre la vista prèvia per triar la zona, o prem **Pàgina sencera**. Si no es pot incrustar com a vector, s'insereix com a imatge. Un cop posada, es mou, s'escala i es gira com una imatge, i se'n pot ajustar la mida i la posició en mm.

> ⚠️ El retall és visual: el contingut que queda fora del retall continua dins el fitxer. Una pàgina amb anotacions es fa servir en la seva versió original, sense les anotacions.

### Mesurar

L'eina **Mesura** (`M`) té tres modes al selector del costat de l'escala:

- **Distància** a l'escala triada (`1:`).
- **Àrea i perímetre**: clica els vèrtexs i tanca el polígon clicant el primer punt, amb doble clic o amb Retorn.
- **Calibrar escala**: clica els dos extrems d'una cota coneguda, escriu-ne la longitud real en metres i l'escala es calcula sola.

## 06. Editar el contingut original

Amb l'eina **✎ Contingut** (`X`) fes clic en un text del PDF per canviar-lo.

| Mode | Què fa |
|---|---|
| Original | Edita amb les lletres de la font original incrustada. |
| Combinar | Manté les lletres originals i completa només les que falten amb la font de reemplaçament (estàndard, fitxer .ttf/.otf o font instal·lada). |
| Reescriure tot el fragment | Tot el fragment amb la font de reemplaçament (aspecte uniforme). |
| Superposició | Tapa l'original amb el color de fons i escriu a sobre (l'original continua a sota). |

Fes clic en una **imatge** del PDF per eliminar-la, substituir-la o convertir-la en un objecte mòbil.

> ⚠️ Si el contingut original ha canviat respecte a l'anàlisi, l'edició s'omet amb un avís en lloc de malmetre el PDF.

## 07. Marcadors

La pestanya **🔖 Marcadors** mostra l'arbre de marcadors del PDF: llegeix, crea, edita i navega.

- `Ctrl+B` afegeix un marcador a la pàgina actual.
- Doble clic o `F2` per reanomenar; arrossega per reordenar o niar.
- Pots canviar-ne el color, negreta, cursiva i l'estat obert/tancat.
- `Alt+↑/↓` salta al marcador anterior o següent.
- Pots exportar el llistat a Markdown, LaTeX, CSV i JSON.

Es desen dins el PDF (`/Outlines`) i se segueixen en extreure, duplicar i fusionar pàgines.

> 💡 La navegació va a la pàgina, no a la posició exacta de la destinació. «Insereix des de PDF» no importa marcadors.

## 08. Revisar i signar

El mode **Revisar** afegeix **anotacions PDF reals**, que Acrobat i els altres visors poden llegir, respondre i canviar d'estat:

- Notes (editables en una finestreta sobre el full, `Ctrl+Retorn` desa) i notes al marge amb fletxa.
- Ressaltar, subratllar i ratllar text arrossegant-hi el cursor. Es llisten al filtre **Marques de text** i s'exporten a CSV o Markdown.
- Rectangles, el·lipses, fletxes, polígons i **núvols de revisió**.
- **Segells** (APROVAT, REBUTJAT, REVISAT…, o personalitzats, amb autor i data), també d'aspecte manual i amb nansa de gir.
- Fitxers adjunts en un punt de la pàgina.

El panell de la dreta llista totes les marques amb filtres per pàgina, tipus, autor i estat, i en permet l'exportació. Pots amagar o mostrar totes les notes.

### Signar

1.  Al mode **Signar** afegeix un camp de signatura o tria'n un d'existent.
2.  Carrega el teu certificat `.p12`/`.pfx` (clau RSA o EC P-256, P-384 i P-521) i escriu-ne la contrasenya.
3.  Signa. La signatura és PAdES i es pot validar amb Acrobat, pyHanko o pdfsig. Es poden combinar signatures EC i RSA en un circuit de signants.

> ⚠️ El certificat i la contrasenya es processen al navegador i no surten mai de l'ordinador. Una signatura queda invalidada si després modifiques el document: signa sempre l'últim.

## 09. Adjunts, capes i propietats

El panell lateral té quatre pestanyes: **Pàgines**, **Marcadors**, **Adjunts** i **Capes**.

- **Adjunts**: afegeix fitxers (arrossegant-los o amb el botó), descriu-los, desa'ls al disc o treu-los. Es desen dins el PDF i l'editor no els obre mai; els executables es marquen.
- **Capes**: mostra i amaga les capes (contingut opcional) dels PDF de CAD o BIM. L'estat s'aplica a la vista, a la impressió i al PDF desat.
- **Fitxer › Propietats del document…**: títol, autor i altres metadades.

## 10. Composar: nodes

**Fitxer › Compositor de fusió…** o el mode **Composar** obre un llenç de nodes. Les connexions porten llistes de pàgines (cable continu) o de nombres, text i cert/fals (cable discontinu). Una connexió incompatible es rebutja amb un avís. Els recomptes es veuen a cada cable.

### Paleta

A dalt, sempre visibles, **Fusionar** i **Document final**; sota, les pestanyes **Documents** (els PDF oberts) i **Operacions**. Pots arrossegar PDF a la barra (s'obren) o al llenç (cadascun es col·loca com a font). **Tots al llenç** posa una font per document connectada a un Fusionar nou.

| Família | Nodes |
|---|---|
| Valors | Propietat, Comparar, Lògica, Patró, Valor, Panell, Extreure del text, Calcular, Comptar |
| Triar | Filtrar, Agrupar per (una sortida per grup), Triar rang (codis `p` = primera i `z` = última: `p, z` · `p+1` · `z-1` · `1-3, 8, 12-z`; amb «Dins cada document» compten per a cada document d'origen), Treure en blanc, Treure duplicats |
| Ordenar | Invertir, Desplaçar, Repetir, Ordenar per, Intercalar |
| Transformar | Girar, Escalar (amb opció «Només reduir» i informe de les pàgines escalades), Retallar, Afegir marges, Tallar en parts, **Mosaic** (talla cada plànol gran en peces d'un format, p. ex. un A2 en 4 A4, amb solapament, creuetes d'alineació i etiqueta de peça), **Imprimir** (1, 2 o 4 pàgines per full d'un format, a escala ajustada, només reduint o a 100 %, amb marge d'impressora, marques de tall i etiqueta), N per full (amb mode llibret), Inserir en blanc, Color i ràster |
| Editar | Capçalera i peu (amb tres posicions), Text, Segell / marca d'aigua, Imatge / caixetí, **Pàgina PDF incrustada** (una pàgina d'un altre document dins cada pàgina, com a vector, amb posició per ancoratge o en mm, escala, gir, opacitat i retall), Camp de signatura |
| Generar | Lot de documents, Portada, Separadors, Índex, Inserir en blanc |
| Document | Aplanar, Capes, Metadades, Adjunts, Marcadors del text, **Marcadors automàtics** (regles «text =\> títol» o per pàgines, amb cinta de color), **Colors de pàgina** (marc de color per paraula clau, pàgines o document) i **Ordenar marcadors** (per color, amb marcador pare per color i el nom de la llegenda; per pàgina o per títol) |

### Treballar al llenç

- **Selecció múltiple**: Maj+clic afegeix, Ctrl+clic treu; Maj+arrossegar fa una finestra (d'esquerra a dreta, els nodes sencers; de dreta a esquerra, també els que toca). `Ctrl+A` selecciona tot i `Esc` ho buida. Amb diversos nodes, la barra de la dreta alinea, distribueix, plega, desplega i elimina.
- **Grups** amb títol i color (`Ctrl+G`), **notes** i **clústers**: un grup plegat es veu com un sol node.
- **Els meus nodes**: desa un grup com a node reutilitzable. **Plantilles de receptes**: 13 de fàbrica i les teves, per reaprofitar-les amb altres PDF. Inclouen receptes **per a arquitectura**: memòria de projecte bàsic, projecte d'execució, entrega al visat, plànols en mosaic i plànols per imprimir en A3 (les paraules clau són editables; són una estructura de partida, no una validació del que exigeix el CoAC).
- Les opcions de cada node són al mateix node i a la barra de la dreta; el botó dret ofereix les ràpides.
- A la franja de vista prèvia, **Mida relativa** dibuixa cada pàgina a escala real respecte de les altres (un A3 té el doble d'àrea que un A4); un altre clic les torna a posar totes iguals.

### Sortida

- **Document final**: un fitxer per grup o sortida, amb patró de nom (`{fitxer}` `{doc}` `{grup}` `{n}`), marcadors niats i opció **Reduir la mida en desar**.
- **Desar múltiple** (barra de la dreta sense cap node seleccionat): descàrregues, ZIP o directament a una carpeta, amb informe CSV.
- **Lot de documents**: la recepta s'aplica a cada document per separat (els signats s'exclouen).

> 💡 Les transformacions vectorials (escalar, retallar, N per full…) mantenen el text; **Color i ràster** el converteix en imatge. Els enllaços i camps de formulari de les pàgines transformades es perden. La recepta es desa en JSON.

## 11. Reduir la mida

**Fitxer › Reduir la mida…** optimitza el PDF actual. Tria un perfil:

| Perfil | Resolució d'imatges |
|---|---|
| Mida mínima / Web | 96 ppp |
| Estàndard | 150 ppp |
| Impressió d'alta qualitat | 300 ppp |
| Impremta | No recomprimeix les imatges |

La neteja treu metadades, miniatures, JavaScript i accions automàtiques, adjunts (opcional), objectes duplicats i sense ús; comprimeix els fluxos i pot aplanar anotacions i formularis. Veuràs la mida abans i després amb el desglossament. Si es compleixen les condicions bàsiques, el resultat és «compatible amb PDF/A-2b»; si no, se't diuen els motius.

> 💡 Les imatges CMYK, indexades o amb màscares no es toquen.

## 12. Exportar a DXF

**Fitxer › Exporta a DXF…** converteix la geometria vectorial de la pàgina actual, de les seleccionades o de totes en fitxers DXF **R12 (AC1009)**, el format més compatible.

| Opció | Detall |
|---|---|
| Contingut | Línies, polilínies (les corbes es divideixen en segments) i textos. |
| Capes | Una capa per color (`COL_rrggbb`) amb l'ACI més proper. |
| Unitats | Mil·límetres o punts. |
| Escala | La mateixa de l'eina Mesura; es pot calibrar amb l'última mesura feta. |
| Qualitat | Suavitat de corbes i filtre de segments minúsculs. |
| Inclou | Edicions de contingut i, opcionalment, anotacions. Es respecta el gir de pàgina. |

> ⚠️ Les imatges i els degradats (shadings) no s'exporten. El text es codifica en Windows-1252.

## 13. Analitzar un PDF sospitós (guaitaPDFscan)

El mode **Escanejar** (commutador de la capçalera o **Fitxer › Analitza PDF sospitós…**) carrega **guaitaPDFscan 1.3** dins l'editor, en un marc aïllat (`sandbox`) sense accés a l'editor. El PDF sospitós s'obre i s'analitza **només** a l'analitzador; en aquest mode l'editor tampoc no accepta fitxers arrossegats.

1.  Carrega el PDF sospitós i analitza'l.
2.  Desarma'l i desa'l.
3.  Prem **Obre a guaitaPDF Edit**: l'editor valida el PDF net, l'obre com a document nou i torna al mode d'edició.

### Seguretat de la connexió

La comunicació usa `postMessage` amb un protocol versionat. L'editor només accepta missatges del marc que ell ha obert, amb app `guaitaPDFscan`, un ArrayBuffer d'1 B a 500 MB que comença per `%PDF-` i un nom sanejat (sense `\ / : * ? " < > |`).

## 14. Instal·lar com a aplicació

Guaita PDF Edit es pot instal·lar com una **aplicació d'escriptori** (PWA): s'obre en una finestra pròpia, funciona sense connexió, s'actualitza sola quan n'hi ha una versió nova i es pot triar per obrir PDF. Els fitxers no surten mai de l'ordinador.

- **Chrome:** icona d'instal·lar a la dreta de la barra d'adreces, o menú ⋮ › **Instal·la Guaita PDF Edit**.
- **Edge:** menú ··· › Aplicacions › **Instal·la aquest lloc com a aplicació**.
- **Des de l'app:** menú **Ajuda › Instal·lar com a aplicació…**.

Un cop instal·lada, clic dret sobre un PDF › **Obre amb › Guaita PDF Edit**. Si l'aplicació ja és oberta, els PDF nous s'afegeixen com a pestanyes a la mateixa finestra. Per fer-la l'aplicació per defecte: **Propietats › Obre amb › Canvia** (Windows) o **Obtén informació › Obre amb** (macOS).

> 💡 Cal obrir l'adreça web (https) de l'aplicació, no el fitxer des del disc. Firefox i Safari d'escriptori no instal·len PWA; a Safari de l'iPhone: **Comparteix › Afegeix a la pantalla d'inici**.

## 15. Dreceres de teclat

| Tecla | Acció |
|---|---|
| `Ctrl+Z` / `Ctrl+Y` | Desfés / refés |
| `Ctrl+F` | Cerca text |
| `Ctrl+P` | Imprimeix |
| `Ctrl+C` `Ctrl+X` `Ctrl+V` | Copia / retalla / enganxa pàgines (Ctrl+V també una imatge) |
| `Ctrl+B` | Afegeix marcador a la pàgina actual |
| `Alt+↑` / `Alt+↓` | Marcador anterior / següent |
| `F2` | Reanomena el marcador seleccionat |
| `Supr` | Elimina pàgines, objecte o marcador seleccionat |
| `←` `→` `RePàg` `AvPàg` | Pàgina anterior / següent |
| `Inici` / `Fi` | Primera / última pàgina |
| `G` | Vés a una pàgina |
| `1` `2` `3` `4` | Pàgina · llibre · continu · continu 2 columnes |
| `5` `6` `7` | Enquadernada · anvers-revers · organitzador de pàgines |
| `Ctrl+L` | Presentació a pantalla completa (Esc surt) |
| `+` `-` `F` | Zoom + / zoom − / ajusta a pàgina |
| Maj/Ctrl+roda | Zoom al punt del ratolí |
| `P` `V` `X` `M` | Mà · Selecciona · Edita contingut · Mesura |
| `D` `H` `T` `R` `E` `S` | Llapis · ressaltador · text · forma · goma · signatura |
| `Maj+T` / `Maj+H` | Text in situ / ressaltar text |
| `Ctrl+A` / `Ctrl+G` | Composar: selecciona tots els nodes / agrupa |
| `Esc` / `F11` | Tanca diàlegs, cancel·la · pantalla completa |

## 16. Preguntes freqüents

**❓ Per què no puc editar un PDF signat?**

Qualsevol canvi invalida la signatura. Edita primer i signa al final; els lots de Composar exclouen els documents ja signats.

**❓ Es poden publicar a GitHub Pages?**

Sí: són fitxers estàtics. Cal servir-los per HTTPS.

**❓ El DXF no mostra les imatges**

És una limitació coneguda: només s'exporta geometria vectorial i text.

**❓ Després de reduir la mida el text no es pot seleccionar**

Això passa amb **Color i ràster** (Composar), que converteix les pàgines en imatge. **Reduir la mida** conserva el text.

**❓ Si faig doble clic a un altre PDF, es tanca el que tinc obert?**

No. Amb l'aplicació instal·lada, el PDF nou s'obre com una pestanya nova a la mateixa finestra.

**❓ Els meus PDF surten de l'ordinador?**

No. Tot es processa localment al navegador, també l'analitzador i la signatura.

---

<sub>SBS BIM Consulting 2026 · Copyright © 2026 Jordi Subirós · AGPL-3.0-only<br>Guaita Apps es distribueix «tal com és», sense cap garantia. Les eines estan pensades desde la recerca i com a suport tècnic i educatiu; la verificació dels resultats i la responsabilitat derivada del seu ús recauen únicament sobre l'usuari final.</sub>
