.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.implements com/nd/android/backpacksystem/serverinterface/impl/UrlParamsConvert
.inner class public static ItemTypeListUrlParams inner com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams outer com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList

.field public 'mUpdateTime' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/mUpdateTime I
return
.limit locals 1
.limit stack 2
.end method

.method public doConvert()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/mUpdateTime I
iconst_m1
if_icmpeq L0
aload 1
ldc "updatetime"
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/mUpdateTime I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/ItemTypeList$ItemTypeListUrlParams/mUpdateTime I
iconst_m1
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
