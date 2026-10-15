/* Guaita PDF Edit 7.5.2 · service worker: fa funcionar l'app sense connexió.
   Estratègia: xarxa primer per a la pàgina (així sempre veus l'última versió) i memòria cau com a reserva. */
const CACHE = 'guaita-pdf-edit-752p';
const SHELL = ['./', 'manifest.webmanifest', 'icon-192.png', 'icon-512.png', 'icon-512-maskable.png'];
self.addEventListener('install', e => { e.waitUntil(caches.open(CACHE).then(c => c.addAll(SHELL)).then(() => self.skipWaiting())); });
self.addEventListener('activate', e => { e.waitUntil(caches.keys().then(ks => Promise.all(ks.filter(k => k !== CACHE && k.startsWith('guaita-pdf-edit')).map(k => caches.delete(k)))).then(() => self.clients.claim())); });
self.addEventListener('fetch', e => {
  const r = e.request; if (r.method !== 'GET' || new URL(r.url).origin !== location.origin) return;
  e.respondWith(fetch(r).then(res => { if (res && res.ok) { const cp = res.clone(); caches.open(CACHE).then(c => c.put(r, cp)); } return res; }).catch(() => caches.match(r).then(m => m || (r.mode === 'navigate' ? caches.match('./') : undefined))));
});
