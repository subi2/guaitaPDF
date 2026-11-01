# NOTICE · Guaita PDF Edit

**Guaita PDF Edit** · SBS BIM Consulting 2026
Copyright © 2026 Jordi Subirós · Llicència **GNU AGPL v3.0** (`AGPL-3.0-only`), vegeu el fitxer [`LICENSE`](LICENSE).

Versió del NOTICE: **5**

---

## Autoria i ús d'IA

La idea, el disseny funcional, la direcció, la revisió i les proves són de **Jordi Subirós**. Una part important del codi s'ha generat amb assistència d'intel·ligència artificial (**Claude**, d'Anthropic) sota direcció humana («vibecoding»), i l'autor la revisa, la prova i se'n responsabilitza com a titular del projecte.

## Authorship and AI use

The idea, functional design, direction, review and testing are by **Jordi Subirós**. A significant part of the code was generated with the assistance of artificial intelligence (**Claude**, by Anthropic) under human direction (“vibecoding”), and is reviewed and tested by the author, who is responsible for it as the project owner.

### Contribució humana · Human contribution

- **Concepte i disseny funcional:** definició de l'abast, de les funcions i del comportament de cada eina, a càrrec de l'autor.
- **Decisions:** arquitectura, format d'un sol fitxer HTML, llicència, estructura del repositori i prioritats del projecte, preses per l'autor.
- **Revisió:** cada canvi generat amb IA és revisat per l'autor abans d'integrar-se al repositori.
- **Proves:** verificació funcional i proves de les funcions pel mateix autor.

Totes les contribucions generades amb IA queden sota la responsabilitat i la titularitat de l'autor.

### Human contribution

- **Concept and functional design:** scope, features and behaviour of each tool defined by the author.
- **Decisions:** architecture, single-file HTML format, licence, repository structure and project priorities, made by the author.
- **Review:** every AI-generated change is reviewed by the author before it is merged into the repository.
- **Testing:** functional verification and feature testing by the author.

All AI-assisted contributions are under the author's responsibility and ownership.

---

## Eina experimental i educativa · Experimental and educational tool

Guaita Apps està en desenvolupament i s'ofereix **sense cap garantia**: l'autor no assumeix cap responsabilitat pels danys, pèrdues de dades o decisions derivades del seu ús. Treballa sempre amb còpies dels teus PDF i verifica'n els resultats.

Guaita Apps is under development and offered **without any warranty**: the author accepts no liability for damages, data loss or decisions arising from its use. Always work on copies of your PDFs and check the results.

---

## Components de tercers · Third-party components

Els HTML de l'app incrusten biblioteques de codi obert amb les seves pròpies llicències. Es mantenen els seus avisos de copyright i llicència.

| Component | Versió | Ús | Llicència | Fitxer | Estat |
|---|---|---|---|---|---|
| [pdf.js](https://github.com/mozilla/pdf.js) (Mozilla) | 3.11.174 | Lectura i renderitzat (editor) | Apache-2.0 | `web/index.html`, `weben/index.html` | Confirmat (LICENSE del paquet `pdfjs-dist` a npm) |
| [pdf.js](https://github.com/mozilla/pdf.js) (Mozilla) | 4.10.38 | Lectura i renderitzat (scanner) | Apache-2.0 | `guaitaPDFscan_1.3.html` | Llicència confirmada a npm; versió del bundle no comparada |
| [pdf-lib](https://github.com/Hopding/pdf-lib) | 1.17.1 | Escriptura i edició de PDF | MIT | `index.html` | Confirmat (metadades npm) |
| [fontkit](https://github.com/foliojs/fontkit) (`@pdf-lib/fontkit`) | 1.1.1 | Tipografies incrustades | MIT | `index.html` | Confirmat (metadades npm) |
| tslib (Microsoft) | Desconeguda | Funcions auxiliars de compilació, dins de pdf-lib | Apache-2.0 (segons l'avís del bundle); el paquet `tslib` és 0BSD | `index.html`, abans del bloc de pdf-lib | Avís del bundle mantingut tal com és. Versió exacta de tslib pendent de confirmar |
| [node-forge](https://github.com/digitalbazaar/forge) | 1.3.1 | Signatura digital (.p12/.pfx) | BSD-3-Clause (s'usa sota BSD) | `index.html` | Confirmat (avís complet al codi i metadades npm) |
| pako | 1.x (dependència de pdf-lib) | Compressió | MIT AND Zlib | `index.html` | Confirmat (LICENSE del paquet npm); versió del bundle no comparada |
| iconv-lite | Desconeguda | Codificacions de text | MIT | `index.html` | Confirmat per metadades npm; versió del bundle no comparada |
| IBM Plex | Desconeguda | Tipografia de la interfície | SIL OFL 1.1 | `index.html` | Confirmat per metadades npm; versió no comparada |
| Foxit standard fonts | Desconeguda | Fonts PDF estàndard | Llicència tipus BSD (PDFium Authors) | `guaitaPDFscan_1.3.html` | Confirmat (`LICENSE_FOXIT` a `pdfjs-dist` 3.11.174) |
| Liberation Sans | Desconeguda | Fonts PDF | SIL OFL 1.1 (noms reservats) | `guaitaPDFscan_1.3.html` | Confirmat (`LICENSE_LIBERATION` a `pdfjs-dist` 3.11.174) |

> *Pendent:* la versió exacta de tslib dins del bundle; la versió exacta de cada component dins del bundle; els vídeos i pòsters, que encara no tenen llicència declarada; i els avisos de MIT i ISC que apareixen al codi sense atribució clara.

---

## Contacte · Contact

- Errors i suggeriments: [GitHub Issues](https://github.com/subi2/guaitaPDF/issues)
- Correu: guaitaapps@gmail.com
