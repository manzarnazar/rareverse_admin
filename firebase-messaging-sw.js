importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-auth.js');

firebase.initializeApp({
    apiKey: "AIzaSyDGCzazBBuRQfmw5B7f6ZAIuLjeD5f_E1E",
    authDomain: "rareverseapp.firebaseapp.com",
    projectId: "rareverseapp",
    storageBucket: "rareverseapp.firebasestorage.app",
    messagingSenderId: "619656543555",
    appId: "1:619656543555:web:6e9ae5a404f83dd87343f6",
    measurementId: "G-KG2G6CWFL9"
});

const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function(payload) {
    return self.registration.showNotification(payload.data.title, {
        body: payload.data.body || '',
        icon: payload.data.icon || ''
    });
});