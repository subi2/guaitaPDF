<!-- SPDX-License-Identifier: AGPL-3.0-only · Copyright (c) 2026 SBS BiM Consulting, Jordi Subirós -->
<p align="center"><img src="banner.svg" alt="Guaita PDF Edit 7.5" width="100%"></p>

<p align="center">
<img src="https://img.shields.io/badge/versi%C3%B3-7.5-C6FF00?style=for-the-badge&labelColor=0b0d07" alt="7.5">
<img src="https://img.shields.io/badge/llic%C3%A8ncia-AGPL--3.0--only-FF2ECC?style=for-the-badge&labelColor=0b0d07" alt="AGPL-3.0-only">
<img src="https://img.shields.io/badge/offline-0%20CDN-00E5FF?style=for-the-badge&labelColor=0b0d07" alt="offline">
<img src="https://img.shields.io/badge/PWA-instal%C2%B7lable-FFE500?style=for-the-badge&labelColor=0b0d07" alt="PWA">
</p>

<p align="center"><b>🇨🇦 <a href="#català">Català</a></b> · <b>🇬🇧 <a href="#english">English</a></b></p>

---

## Català

**Guaita PDF Edit** és un editor de PDF multidocument en **un sol fitxer HTML**: no es connecta a cap servidor i funciona sense Internet. Els teus PDF no surten mai de l'ordinador. Es pot obrir directament al navegador o **instal·lar com a aplicació (PWA)**. Forma part de la suite **Guaita Apps**.

### Instal·la-la com a aplicació (PWA)

**PWA** vol dir *aplicació web progressiva*. En pocs mots: **instal·la l'app a l'escriptori del teu ordinador i romandrà actualitzada.** S'obre en finestra pròpia, funciona sense connexió i es refresca sola quan n'hi ha.

- **Chrome:** icona d'instal·lar a la dreta de la barra d'adreces, o menú ⋮ → «Instal·la Guaita PDF Edit».
- **Edge:** menú ··· → Aplicacions → «Instal·la aquest lloc com a aplicació».
- **Des de l'app:** menú Ajuda → «Instal·lar com a aplicació…», o el botó de la pantalla de benvinguda.
- Un cop instal·lada, la pots triar per obrir PDF (clic dret sobre un PDF → Obre amb).
- Disponible a Chrome i Edge (escriptori i Android). Cal servir-la per HTTPS (p. ex. GitHub Pages); en obrir el fitxer en local (`file://`) funciona com a pàgina normal.

### Funcions

| | |
|---|---|
| 📄 **Pàgines** | Reordena, gira, duplica, extreu, elimina, insereix; copia/enganxa entre documents; fusiona pestanyes; **nou document** en blanc o amb una pàgina per imatge |
| 👁 **Vistes** | Pàgina única, llibre, continu i continu en dues columnes; **Organitzador de pàgines** (arrossega per reordenar, mida S/M/L); **cintes de marcadors** de colors al marge de cada pàgina marcada |
| 🎨 **Colors de pàgina** | Marc de color per pàgina, **llegenda amb noms** i **filtre** (atenua les altres); es veu a la vista de llibre i als nodes de Composar, i es desa dins el PDF |
| ✍ **Anotacions** | Llapis i bolígrafs (3 + 2) amb gruix i opacitat, ressaltador, text (també **in situ** i en negreta), formes, signatura, imatges, marca d'aigua, numeració, mesura a escala |
| ✎ **Contingut original** | Edita text amb la font incrustada, **combina** lletres originals amb una font de reemplaçament, i elimina/substitueix/mou imatges |
| 🔖 **Marcadors** | Lectura, creació, edició, arrossegar i niar, navegació, panell lateral; es desen dins el PDF; **índex a partir dels marcadors** amb enllaços |
| 💬 **Revisar i signar** | Notes, núvols, fletxes i segells amb respostes i estats; signatura, inicials i circuit d'aprovació; certificats amb clau EC |
| 🧩 **Composar** | Llenç de nodes per combinar PDF (estil Grasshopper): nodes de **triar** (rang amb codis `p` i `z`), **ordenar**, **transformar** (escalar, **mosaic**, **imprimir** en A3…), **edició**, **generació**, **document** (aplanar, capes, metadades, **marcadors i colors automàtics**, **ordenar marcadors**, **signatura amb certificat**); **estructures de dossier**, **paràmetres** i **anotacions automàtiques**; **lots**, grups, notes, clústers, zoom i **receptes**, també **per a arquitectura** (memòria de projecte, execució, entrega al visat, plànols en mosaic i en A3) |
| 🗜 **Dividir i reduir** | Pàgines › Dividir el document en diversos fitxers; Reduir la mida (imatges, metadades, miniatures, JavaScript…) |
| 📋 **Aplicar a altres pàgines** | Copia una anotació, segell o capçalera/peu a les pàgines que triïs (totes, parells, senars, interval) |
| 📐 **Exporta a DXF** | Geometria vectorial → DXF R12, capes per color, unitats i escala calibrable (sense dependre de cap altra app) |
| 🛡 **guaitaPDFscan** | Analitza i desarma un PDF sospitós en una finestra aïllada; l'editor només rep el PDF net |
| 🖨 **Impressió** | Previsualització amb paper, orientació i escala (com Acrobat) |
| 🌐 **Idiomes** | Català i anglès |

### Fitxers

| Fitxer | Ús |
|---|---|
| `web/index.html` | L'editor (és el fitxer de l'aplicació; la mateixa adreça serveix per a totes les versions) |
| `web/manifest.webmanifest`, `web/sw.js`, `web/icon-*.png` | Instal·lació com a PWA i ús sense connexió; **han de ser a la mateixa carpeta** |
| `web/guaitaPDFscan_1.3.html` | Analitzador; **ha de ser a la mateixa carpeta** |
| `web/HLP guaitaPDFedit-ajuda.html` | Manual d'ús |
| `weben/…` | Versió anglesa (mateixa estructura) |

### Ús

1. Obre `https://subi2.github.io/guaitaPDF/web/index.html` (o desa els fitxers a **una mateixa carpeta** i fes doble clic a `index.html`).
2. Obre o arrossega un o diversos PDF.
3. Si vols, instal·la-la com a aplicació (vegeu més amunt).

Per a l'analitzador, el navegador ha de permetre finestres emergents. Es serveix per **GitHub Pages** (fitxers estàtics, HTTPS, editor i analitzador al mateix directori).

📘 **Manual complet:** [`HLP guaitaPDFedit-ajuda.html`](HLP%20guaitaPDFedit-ajuda.html)

### Limitacions conegudes

La navegació de marcadors va a la pàgina (no a la posició exacta); «Insereix des de PDF» no importa marcadors; el DXF no exporta imatges ni degradats. El que es dibuixa a Editar queda incrustat a la pàgina (es veu a qualsevol visor però no s'hi pot editar); les anotacions de Revisar són anotacions PDF reals. Els colors de pàgina i les cintes de la vista de llibre només els llegeix Guaita.

---

## English

**Guaita PDF Edit** is a multi-document PDF editor in **a single HTML file**: it talks to no server and works offline. Your PDFs never leave your computer. Use it straight in the browser or **install it as an app (PWA)**. Part of the **Guaita Apps** suite.

### Install it as an app (PWA)

**PWA** means *progressive web app*. In short: **install the app on your computer's desktop and it will stay up to date.** It opens in its own window, works offline and refreshes itself when you are online.

- **Chrome:** install icon at the right of the address bar, or menu ⋮ → “Install Guaita PDF Edit”.
- **Edge:** menu ··· → Apps → “Install this site as an app”.
- **From the app:** Help menu → “Install as an app…”, or the button on the welcome screen.
- Once installed you can pick it to open PDFs (right-click a PDF → Open with).
- Available in Chrome and Edge (desktop and Android). It must be served over HTTPS (e.g. GitHub Pages); opened locally (`file://`) it works as a normal page.

### Features

| | |
|---|---|
| 📄 **Pages** | Reorder, rotate, duplicate, extract, delete, insert; copy/paste across documents; merge tabs; **new document**, blank or with one page per image |
| 👁 **Views** | Single page, book, continuous and two-column continuous; **Page organiser** (drag to reorder, S/M/L size); coloured **bookmark ribbons** on the margin of each bookmarked page |
| 🎨 **Page colours** | A colour frame per page, **named legend** and **filter** (dims the others); shown in the book view and in Compose nodes, and saved inside the PDF |
| ✍ **Annotations** | Pencils and ballpoints (3 + 2) with width and opacity, highlighter, text (also **in situ** and bold), shapes, signature, images, watermark, page numbers, scaled measuring |
| ✎ **Original content** | Edit text with the embedded font, **combine** original letters with a replacement font, delete/replace/move images |
| 🔖 **Bookmarks** | Read, create, edit, drag and nest, navigate, side panel; saved inside the PDF; **index from bookmarks** with links |
| 💬 **Review & sign** | Notes, clouds, arrows and stamps with replies and status; signature, initials and approval circuit; EC-key certificates |
| 🧩 **Compose** | Node canvas to combine PDFs (Grasshopper-style): **pick** (range with `p` and `z` codes), **sort**, **transform** (scale, **mosaic**, **print** on A3…), **edit**, **generate** and **document** nodes (flatten, layers, metadata, **automatic bookmarks and colours**, **sort bookmarks**); **batch** processing, groups, notes, clusters, zoom and **recipes**, including **architecture ones** (project report, execution project, submission, mosaic and A3 plans) |
| 🗜 **Split & reduce** | Pages › Split the document into several files; Reduce size (images, metadata, thumbnails, JavaScript…) |
| 📋 **Apply to other pages** | Copy an annotation, stamp or header/footer to the pages you choose (all, even, odd, range) |
| 📐 **Export to DXF** | Vector geometry → DXF R12, colour layers, units and calibrated scale (no other app needed) |
| 🛡 **guaitaPDFscan** | Analyse and disarm a suspicious PDF in an isolated window; the editor only receives the clean PDF |
| 🖨 **Print** | Preview with paper, orientation and scale (Acrobat-style) |
| 🌐 **Languages** | Catalan and English |

### Files

| File | Use |
|---|---|
| `weben/index.html` | The editor, English build |
| `weben/manifest.webmanifest`, `weben/sw.js`, `weben/icon-*.png` | PWA install and offline use; **must be in the same folder** |
| `weben/guaitaPDFscan_1.3_EN.html` | Analyser; **must be in the same folder** |
| `weben/HLP_guaitaPDFedit-help_EN.html` | User guide |

*The English build is still at 7.3.2 and does not yet include the features above that are new in 7.4–7.5.*

### Usage

1. Open `https://subi2.github.io/guaitaPDF/weben/index.html` (or save the files into **one folder** and double-click `index.html`).
2. Open or drop one or more PDFs.
3. If you like, install it as an app (see above).

The analyser needs the browser to allow pop-ups. It is served via **GitHub Pages** (static files, HTTPS, editor and analyser in the same directory).

📘 **Full guide:** [`HLP guaitaPDFedit-help_EN.html`](HLP%20guaitaPDFedit-help_EN.html)

### Known limitations

Bookmark navigation goes to the page (not the exact position); “Insert from PDF” does not import bookmarks; DXF export skips images and shadings. What you draw in Edit is embedded in the page (visible in any viewer but not editable there); Review annotations are real PDF annotations. Page colours and the book-view ribbons are only read by Guaita.

---

## Components · Llicència · Licence

[pdf.js](https://mozilla.github.io/pdf.js/) 3.11.174 (Apache-2.0) · [pdf-lib](https://pdf-lib.js.org/) 1.17.1 (MIT) · [@pdf-lib/fontkit](https://github.com/Hopding/fontkit) 1.1.1 (MIT) — tots incrustats / all embedded.

Copyright © 2026 **SBS BiM Consulting, Jordi Subirós** · `SPDX-License-Identifier: AGPL-3.0-only`

> Guaita Apps es distribueix «tal com és», sense cap garantia. / Guaita Apps is distributed “as is”, without any warranty.
