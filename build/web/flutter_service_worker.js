'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "09782d4b20699b72a463dca800ec3bd9",
"index.html": "174660ce5853312e01a07cdde88591ec",
"/": "174660ce5853312e01a07cdde88591ec",
"main.dart.js": "0602af24f367bbb1046bb9853b776b06",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "933a8a5c4ea7586f87a007cd65544a2e",
"assets/AssetManifest.json": "311869fb239a8a4f49eab8b56c2ed304",
"assets/NOTICES": "81b7bcee9a9f02523663fcbb1ee1cdc0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "82914194d4da2f83471abff3c58851a1",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"assets/packages/fluttertoast/assets/toastify.js": "18cfdd77033aa55d215e8a78c090ba89",
"assets/packages/fluttertoast/assets/toastify.css": "910ddaaf9712a0b0392cf7975a3b7fb5",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "e1cface1e2b8bdcb7e3158e4b39c5f1c",
"assets/fonts/MaterialIcons-Regular.otf": "b0f9bd1f51e72a4d1ded2acbec9c1651",
"assets/assets/images/sns/naver.svg": "2bcc5f773264b9bd6608ff2127d61bb7",
"assets/assets/images/sns/google.svg": "112ecca2992c6de089c3721077cfad26",
"assets/assets/images/sns/kakao.svg": "bad9719a1193e6fb13fa3b0d94bcd195",
"assets/assets/images/sns/apple.svg": "8bcedeed667a05bd8d34e83ef248ab7a",
"assets/assets/images/news/news1.png": "dfedeeee4027818a1a9b5d860cda7a3d",
"assets/assets/images/news/news2.png": "65b21364d969616f8bb3cff9e33432fa",
"assets/assets/images/news/news3.png": "02dbece7330d6c6867f4b8cf45b8a480",
"assets/assets/images/news/news6.png": "9a0f857cb0c4a1bf4a2863828c3cb7dc",
"assets/assets/images/news/news4.png": "bdb2e41ac99a5fc9cce063ab902b347d",
"assets/assets/images/news/news5.png": "3bb54a988aea3a84dc4631af73a22917",
"assets/assets/images/logo/loginLogo.svg": "e0f9ccbc43e686a5c3fd30b2e3c010f5",
"assets/assets/images/logo/smallChurch.svg": "8a64223d30c1b5286a51d80a52add656",
"assets/assets/images/logo/map.png": "14588999187b51b2d17de5d83c0c4c8f",
"assets/assets/images/logo/qnaEx2.png": "a53798a119e5165f42aa6e044bb2ba6c",
"assets/assets/images/logo/splashLogo.svg": "8ab7d5a289c7ba5c5f03fb878372b076",
"assets/assets/images/logo/q.svg": "4672915c0a5b9390972450cadb959a14",
"assets/assets/images/logo/a.svg": "9a3a0393cef0e66520d032973c32cc46",
"assets/assets/images/logo/youtube.svg": "5965db67ff9eb4bccc014a46fc7039c9",
"assets/assets/images/logo/qnaEx.svg": "bec295fbb4a26a0038d447536daeef42",
"assets/assets/images/homelogo/home8.svg": "ace81f1947dcb6d4d6656fdb3dda9954",
"assets/assets/images/homelogo/home9.svg": "129193882accca64a935042e0076ef6d",
"assets/assets/images/homelogo/home7.svg": "3cd5f02c56b36c3d24686338783aa9e8",
"assets/assets/images/homelogo/home6.svg": "bf75adbe2fd70f78c4eee05ab782ba46",
"assets/assets/images/homelogo/home4.svg": "711c2046204147a41aa57dcb53e9d667",
"assets/assets/images/homelogo/home5.svg": "ea941738da9d4c14832b29e6a6c19562",
"assets/assets/images/homelogo/home1.svg": "b8a2360f49eeb6061e3aa606e0044839",
"assets/assets/images/homelogo/home2.svg": "c485b3fde37be58d542eb1055016d9ab",
"assets/assets/images/homelogo/home3.svg": "a0846d991c29c6134ee9a237131c3fc2",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
