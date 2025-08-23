// Import Firebase scripts
importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js");

// Your Firebase config
firebase.initializeApp({
    apiKey: "AIzaSyDV6I8niXRo54Dw92Kkh42UdKz9WXlnVqo",
    authDomain: "yadgir-food-zone.firebaseapp.com",
    projectId: "yadgir-food-zone",
    storageBucket: "yadgir-food-zone.firebasestorage.app",
    messagingSenderId: "817746781237",
    appId: "1:817746781237:web:1bad5ce16540134efa3d7c",
//    databaseURL: "https://stackfood-bd3ee.firebaseio.com"
});

// Retrieve Firebase Messaging
const messaging = firebase.messaging();

// Background message handler
messaging.setBackgroundMessageHandler(function (payload) {
  console.log('[firebase-messaging-sw.js] Received background message ', payload);

  const notificationTitle = payload.notification?.title || "New Notification";
  const notificationOptions = {
    body: payload.notification?.body || "",
    icon: "/icons/Icon-192.png",
    data: payload.data // extra data so you can access on click
  };

  return self.registration.showNotification(notificationTitle, notificationOptions);
});

// Handle notification click
self.addEventListener("notificationclick", function (event) {
  console.log("Notification click: ", event);

  event.notification.close();

  // Open app window if closed, or focus if already open
  event.waitUntil(
    clients.matchAll({ type: "window", includeUncontrolled: true }).then(function (clientList) {
      if (clientList.length > 0) {
        let client = clientList[0];
        return client.focus();
      }
      return clients.openWindow("/"); // redirect to home or custom route
    })
  );
});
