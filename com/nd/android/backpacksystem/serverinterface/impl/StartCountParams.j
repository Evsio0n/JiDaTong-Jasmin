.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/serverinterface/impl/StartCountParams
.super java/lang/Object
.implements com/nd/android/backpacksystem/data/VerifyObject
.implements com/nd/android/backpacksystem/serverinterface/impl/UrlParamsConvert

.field public 'mCount' I

.field public 'mStart' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
return
.limit locals 1
.limit stack 2
.end method

.method private isCountFieldValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
ifle L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
iconst_m1
if_icmpeq L1
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private isStartFieldValid()Z
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
iconst_m1
if_icmple L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
iconst_m1
if_icmpeq L1
iconst_0
ireturn
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
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
iconst_m1
if_icmpeq L0
aload 1
ldc "start"
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mStart I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
iconst_m1
if_icmpeq L1
aload 1
ldc "count"
aload 0
getfield com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/mCount I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L1:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/isStartFieldValid()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/serverinterface/impl/StartCountParams/isCountFieldValid()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
