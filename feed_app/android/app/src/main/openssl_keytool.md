# 디버그
keytool -exportcert -alias androiddebugkey -keystore C:\Users\tj-bu\.android\debug.keystore -storepass -keypass android | openssl sha1 -binary | openssl base64