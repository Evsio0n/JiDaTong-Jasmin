.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/localstorage/c
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
aload 2
aload 3
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.signature "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 2
ifnonnull L0
L1:
return
L0:
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ifnull L1
aload 0
invokeinterface android/content/SharedPreferences$Editor/clear()Landroid/content/SharedPreferences$Editor; 0
pop
aload 2
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 0
aload 3
aload 2
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
goto L2
L3:
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 4
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 3
ifnonnull L0
L1:
return
L0:
aload 0
aload 1
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ifnull L1
aload 0
invokeinterface android/content/SharedPreferences$Editor/clear()Landroid/content/SharedPreferences$Editor; 0
pop
aload 0
aload 2
aload 3
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 4
.limit stack 3
.end method
