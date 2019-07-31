.bytecode 50.0
.class public final synchronized enum com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;>;"
.inner class public static final enum RequestType inner com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType outer com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom

.field private static final synthetic '$VALUES' [Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'DELETE' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'GET' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'HEAD' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'OPTIONS' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'PATCH' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'POST' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.field public static final enum 'PUT' Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;

.method static <clinit>()V
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "GET"
iconst_0
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "HEAD"
iconst_1
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/HEAD Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "PUT"
iconst_2
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/PUT Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "DELETE"
iconst_3
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "POST"
iconst_4
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "OPTIONS"
iconst_5
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/OPTIONS Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
new com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
ldc "PATCH"
bipush 6
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/PATCH Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
bipush 7
anewarray com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
dup
iconst_0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
dup
iconst_1
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/HEAD Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
dup
iconst_2
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/PUT Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
dup
iconst_3
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
dup
iconst_4
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
dup
iconst_5
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/OPTIONS Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
dup
bipush 6
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/PATCH Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aastore
putstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/$VALUES [Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
ldc com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/$VALUES [Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
invokevirtual [Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
areturn
.limit locals 0
.limit stack 1
.end method
