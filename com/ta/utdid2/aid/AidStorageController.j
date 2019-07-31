.bytecode 50.0
.class public synchronized com/ta/utdid2/aid/AidStorageController
.super java/lang/Object

.field private static final 'KEY_PREF_AID_GEN_TIME' Ljava/lang/String; = "rKrMJgyAEbVtSQGi"

.field private static final 'KEY_PREF_AID_VALUE' Ljava/lang/String; = "EvQwnbilKezpOJey"

.field private static final 'PREF_AID' Ljava/lang/String; = "OfJbkLdFbPOMbGyP"

.field private static final 'TAG' Ljava/lang/String;

.field private static 'sAidGenTimeMapInSP' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"

.field private static 'sAidMapInSP' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.method static <clinit>()V
ldc com/ta/utdid2/aid/AidStorageController
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putstatic com/ta/utdid2/aid/AidStorageController/sAidMapInSP Ljava/util/Map;
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putstatic com/ta/utdid2/aid/AidStorageController/sAidGenTimeMapInSP Ljava/util/Map;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
aload 0
ifnonnull L0
getstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
ldc "no context!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
lconst_0
lreturn
L0:
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 5
getstatic com/ta/utdid2/aid/AidStorageController/sAidGenTimeMapInSP Ljava/util/Map;
aload 5
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
getstatic com/ta/utdid2/aid/AidStorageController/sAidGenTimeMapInSP Ljava/util/Map;
aload 5
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 3
L2:
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 2
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L3
getstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "cache AIDGenTime:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 2
astore 1
aload 2
invokevirtual java/lang/Long/longValue()J
lconst_0
lcmp
ifne L4
aload 0
ldc "OfJbkLdFbPOMbGyP"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
ldc "rKrMJgyAEbVtSQGi"
aload 5
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
lconst_0
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 1
getstatic com/ta/utdid2/aid/AidStorageController/sAidGenTimeMapInSP Ljava/util/Map;
aload 5
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
aload 1
invokevirtual java/lang/Long/longValue()J
lreturn
L1:
lconst_0
lstore 3
goto L2
.limit locals 6
.limit stack 4
.end method

.method public static getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnonnull L0
getstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
ldc "no context!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc ""
astore 1
L1:
aload 1
areturn
L0:
aload 1
aload 2
invokestatic com/ta/utdid2/aid/AidStorageController/getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
getstatic com/ta/utdid2/aid/AidStorageController/sAidMapInSP Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 2
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L2
getstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "cache AID:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aload 2
astore 1
aload 2
invokestatic com/ta/utdid2/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L1
aload 0
ldc "OfJbkLdFbPOMbGyP"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
ldc "EvQwnbilKezpOJey"
aload 3
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
ldc ""
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 0
getstatic com/ta/utdid2/aid/AidStorageController/sAidMapInSP Ljava/util/Map;
aload 3
aload 0
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
areturn
.limit locals 4
.limit stack 4
.end method

.method private static getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 8
if_icmplt L0
aload 0
aload 1
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64Helper/encodeToString([BI)Ljava/lang/String;
astore 0
L1:
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L2
getstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "encodedName:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
aload 0
areturn
L0:
aload 0
aload 1
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
iconst_2
invokestatic com/ta/utdid2/android/utils/Base64/encodeToString([BI)Ljava/lang/String;
astore 0
goto L1
.limit locals 2
.limit stack 4
.end method

.method public static setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
ifnonnull L0
getstatic com/ta/utdid2/aid/AidStorageController/TAG Ljava/lang/String;
ldc "no context!"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L0:
aload 1
aload 3
invokestatic com/ta/utdid2/aid/AidStorageController/getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
invokestatic java/lang/System/currentTimeMillis()J
lstore 4
getstatic com/ta/utdid2/aid/AidStorageController/sAidMapInSP Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
getstatic com/ta/utdid2/aid/AidStorageController/sAidGenTimeMapInSP Ljava/util/Map;
aload 1
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
ldc "OfJbkLdFbPOMbGyP"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 0
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L1
aload 0
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "EvQwnbilKezpOJey"
aload 1
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokestatic com/ta/utdid2/android/utils/SharedPreferenceHelper/apply(Landroid/content/SharedPreferences$Editor;)V
aload 0
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "rKrMJgyAEbVtSQGi"
aload 1
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
lload 4
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
invokestatic com/ta/utdid2/android/utils/SharedPreferenceHelper/apply(Landroid/content/SharedPreferences$Editor;)V
return
L1:
aload 0
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "EvQwnbilKezpOJey"
aload 1
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 0
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "rKrMJgyAEbVtSQGi"
aload 1
invokevirtual java/lang/String/concat(Ljava/lang/String;)Ljava/lang/String;
lload 4
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 6
.limit stack 4
.end method
