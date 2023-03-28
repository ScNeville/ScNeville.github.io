'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "980547175e325fe622a3362b84d55b6a",
"favicon.ico": "25fddf147a7a80343b52ace3c8674564",
"index.html": "6c75d33fb962c347a6b914d552454e79",
"/": "6c75d33fb962c347a6b914d552454e79",
"main.dart.js": "8c7b77dcab4a135a4b4eb80440d09fb0",
"flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "90c454c29b48f08bc06627d125f70466",
".git/config": "971f93d03c1b62ded27f00f8419d276c",
".git/objects/6a/562868741911ffc3a5345f3c094a71eb0d073d": "ad3237b80e6dc65be0e2000c6c0a445f",
".git/objects/35/9a21dc99ff62417622850e181629af51cf5f14": "19d24598492d75331fdf23879c065fcf",
".git/objects/5a/fdad2a380cb2727fafcaf7f8f8f5a54f7d9cf2": "b069d44934d69154b123c51d0b340958",
".git/objects/bb/47e52cc364bb7e5060b52e68288cd6c4e3a190": "604656c96095cd60f87ec6eb3d335663",
".git/objects/b3/7a3b2919d5dbc7b76ea08c018d2d748cb22423": "02ac4155f39bd385c8f7d615ad45a120",
".git/objects/d1/54bb0012e4c0c672c81dd738601742fccb416f": "d9f4b96fcb70df25fce567ddbe752d8d",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c7/e28650da4c1c4f000b2ba350c45ac242a2a9e7": "99b886117add3227b240887bc163f359",
".git/objects/ee/6e1b68c0ba215064ee60cfbd83a0258a99468d": "0c979d0170095da745acc56d2c779f24",
".git/objects/f5/4deecca47b94e38270ac68f7517ef2925acdf1": "5d1e6f36cc2f487bd14e8c13ff7fa2af",
".git/objects/fb/51d7b3efa1a74b8336c7f626fce24383251134": "8bd497d67d531111431b48c8d32218a5",
".git/objects/20/f36f4d4521494f8de713879e9ad1c948dad5e0": "1fc8c3ab3b5c972c82bd359f248cc28b",
".git/objects/4b/ce11f832f26ee264d95b6790237601cf5a6088": "d9243641979aa81a886b057ab392745a",
".git/objects/11/311465283bfffce0e136da38d049e5899d6d50": "897d39b21a32bfbefe9e89347f96e4fe",
".git/objects/42/799e84e86bec283cddeedac8f82e18eb26c90e": "6bb38d03b7ab69a7e75bb18117a42167",
".git/objects/42/7e9093ce6c63da2b06b89d3c1605485fc1bf7b": "5979f73272d6eb046d12addf5fc9a321",
".git/objects/73/a5ca9e6ea457a8e87e3e88047b9268f15bb75b": "437e873491b95548ba60fecc00fa7933",
".git/objects/75/4a8188ea7db387ad95e919485e62cfc360bf98": "516b69f74473b00babea7ebd24742421",
".git/objects/81/9b5d5160f5c238bddb18a5def4abc04d8fd1f1": "46f3e55d0a613efeb95f2e174708f605",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/07/c69b2721cd8fa0a61079feef72a5b07eaa3448": "b7855372837184db2dc1cdcaaf7692cb",
".git/objects/96/d8f2af3ebed90c5c121227263b998710808f1d": "bc53e1020caf55ffe676ac6aaea6c0f1",
".git/objects/54/a76f7f970a8ea0ad2da5a6f0020c3d3001340f": "92743e1b65adbaab8212a8a01752466e",
".git/objects/37/7ead7488ba04497de54363ee4e4436edf85774": "d08a584d3f7b4fb2a65c159d695456ff",
".git/objects/39/dfa528e734c26dc7757f0c06e4c37ed6f90a04": "ee35f4b2150d31e51d0ca57071558c5b",
".git/objects/55/919b0b32f21410d9755ffbe64aeb2d07650744": "ffb88073b04c5f9454f1e7f08edc733c",
".git/objects/55/5ceb582f9966e7b7838f5d15629a76376abcc0": "5bdcd9eae89e9445bb2c93d483663cd7",
".git/objects/0a/14546561d14497b515f11e0119d4593c12c5f6": "cda588126a5c807d489769a6a610c164",
".git/objects/d3/9d59d6c9317dc9c0e31c81537d7efe917c128c": "a439c1a9c828773cc0ee20371364ade2",
".git/objects/ba/c4fd4195c37f7e615f5a73d91eb2b422879c02": "845c881e33cbfe44604c0c889729998b",
".git/objects/a0/cdb50fb3d7a67013109ea09e31177bf6fb761e": "46dab57075af6bbd6e04990902221e63",
".git/objects/dd/2a4f7937a89f8cb30bd77cc1dc0584c949ee94": "104e4ac97695c63211a1fa848a3c3440",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/de/07871c1ac7b4ad0f473f87a1893812a19cdd59": "e1527516d3974ef907d749fbeb41ed7a",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/0dcaa0f39c7ef5aa1e8b916c4219bf79403452": "fd95d761bb6b25865efc8083977e4857",
".git/objects/cd/9577fbeda8c37fe17b708a636b48d4507d843a": "4ba69d5e80f1b25aa3cd614a22dbcf34",
".git/objects/e7/9ae947aab421f809c156f5903dc710d0a10b7f": "885d7b7665e58ce667bdd7d524035fbd",
".git/objects/cb/90f21a83735c9b5887fc40d90264d95a85ad7b": "03cbdf472c5269336f1528fbaf4a5137",
".git/objects/cb/5930b04f898fa7c7fcb6e3398494dc643d1ad5": "dea79fb5268e1a13d56bb8f0134cf83d",
".git/objects/2c/6c013ba4c94ce70162c04c0bb91095119d6b8c": "b202c51b82ad7e50071f9491b1248f48",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/41/5c059c8094b888b0159fdedfd4e3cb08a8028e": "86914685ccd40e82a7fe5b70459fb9f7",
".git/objects/77/53ae665478015de3e8cdb173b9f6ae534d63f4": "81bc037c4052c72762d25ddecfa39cd7",
".git/objects/48/23e3f0a7d4a1981c2c6eb24c7781f3ddd65194": "957d4ea02698ed533e4ecc29c6ef4fd7",
".git/objects/84/149aba8bdce06ff7f5513d2cc5e8c775caac2a": "fedd0ebcf520e1279d2318a4321507e4",
".git/objects/23/68d8820c7c897bceb58709f5021d2c345e6911": "f555f3d64f680f5a60585fd13530061e",
".git/objects/4f/68be719bffa2ce1a93962e35915c61bdd3cc2c": "474ebb3256cf906066a5e8b7fa82dd1e",
".git/objects/12/5c284dc2bbed823ed6389e50cc75a8a1ef2351": "9ab0bcea773dc4fd6ef989aef459b28a",
".git/objects/8c/99266130a89547b4344f47e08aacad473b14e0": "41375232ceba14f47b99f9d83708cb79",
".git/objects/49/938d3f0c07beb7194c72b623c46ebc2acc28a1": "c52513b902ead034bc9a32ad0ecef9b8",
".git/objects/2e/9ba466cf52de19f7cc552c36e0a6fe302ba683": "a42d8fdb61d74f404e794638c8b1ddeb",
".git/objects/2b/d715a3b39f98ff486c31f92222979362d644aa": "90c4ab6e4c0d786172a44192acfcda23",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "c0b1b96c074daa28c97212153b9e1740",
".git/logs/refs/heads/main": "c0b1b96c074daa28c97212153b9e1740",
".git/logs/refs/remotes/origin/main": "a891547fdaaa29302be0d864f9a88629",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "bde652f69f50f97f91918fefa6fe408a",
".git/refs/remotes/origin/main": "bde652f69f50f97f91918fefa6fe408a",
".git/index": "4410894a91e612c91e16366dbfdaedf5",
".git/COMMIT_EDITMSG": "d6f30d0cc6bfa2f8a5485d4b0800c6f9",
"assets/AssetManifest.json": "703ef89d7121537b880197f42f224e75",
"assets/NOTICES": "41af1889d62e5e504604616e1c9bdaff",
"assets/FontManifest.json": "52a7ef1575d0287a91dc763c0918b15e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/python.png": "0785b26f1f578724752c1e194c4d093f",
"assets/assets/images/flutter.png": "eb01e5d8df48559cefc48936db5b1c64",
"assets/assets/images/firebase.png": "6e54c791dc8bd9e8ec9cc09a3cb9e30f",
"assets/assets/images/android.png": "df2873f8e05047e41d0e0954bf545b46",
"assets/assets/images/sp.png": "e78af5585cbd527bafe6d6aa70384361",
"assets/assets/images/nb_logo_t.png": "1a0f27380826b066314b748d5e9f3632",
"assets/assets/images/es.png": "90ee56eb2576dc596e5f53dc603e5a0e",
"assets/assets/images/apple.png": "8c366a7e16a6d8250b31faf2abdcc102",
"assets/assets/images/nb_logo.png": "6d9296d202145c8a9477e1236764f720",
"assets/assets/images/api.png": "74132fd735071cb8d0122713ded2165c",
"assets/assets/images/facebook.png": "5d6ea38a769498dfc19fe6389d14db39",
"assets/assets/images/scott.jpg": "3020f30435f8ad12c0601ff369c508fd",
"assets/assets/fonts/NotoColorEmoji.ttf": "3bd49c8742881d3f0047c56ef770fe64",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
