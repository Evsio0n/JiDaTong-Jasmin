.bytecode 50.0
.class public synchronized com/bestpay/encrypt/SginKeyEncrypt
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.throws java/lang/Exception
bipush 32
invokestatic com/bestpay/encrypt/AES256/getStringRandom(I)Ljava/lang/String;
astore 2
aload 1
aload 2
invokestatic com/bestpay/encrypt/AES256/AES_Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 2
ldc "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCx2zk90WzGIzGjl7opxIFdoinxyp+pjvN1wC0OTrGk6o/c0RyrmQstu690IJPXu/6urLmB7/T2Iy/UUvSkqwzL7oX6D7llTjyR4MQjwvPVy7JZR2WYu1dvPgQn++/DVBuFDtfYW6pRlIi27iPxXyQ3ozAfHo5biR5nNelhu0lnVQIDAQAB"
ldc "UTF-8"
invokestatic com/bestpay/encrypt/RSA/encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "?encryStr="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
ldc "UTF-8"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&encryKey="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
ldc "UTF-8"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&sdkVersion="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "3.0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&platform="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "android_3.0"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public static encryptMap(Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.throws java/lang/Exception
bipush 32
invokestatic com/bestpay/encrypt/AES256/getStringRandom(I)Ljava/lang/String;
astore 1
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 0
ldc java/util/Map
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
aload 1
invokestatic com/bestpay/encrypt/AES256/AES_Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 1
ldc "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCx2zk90WzGIzGjl7opxIFdoinxyp+pjvN1wC0OTrGk6o/c0RyrmQstu690IJPXu/6urLmB7/T2Iy/UUvSkqwzL7oX6D7llTjyR4MQjwvPVy7JZR2WYu1dvPgQn++/DVBuFDtfYW6pRlIi27iPxXyQ3ozAfHo5biR5nNelhu0lnVQIDAQAB"
ldc "UTF-8"
invokestatic com/bestpay/encrypt/RSA/encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 2
ldc "encryStr"
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
ldc "encryKey"
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 2
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method
