.bytecode 50.0
.class public final synchronized enum com/product/android/commonInterface/CommonInterfaceManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/commonInterface/CommonInterfaceManager;>;"

.field private static final synthetic '$VALUES' [Lcom/product/android/commonInterface/CommonInterfaceManager;

.field public static final enum 'INSTANCE' Lcom/product/android/commonInterface/CommonInterfaceManager;

.field private 'mCIObservers' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/product/android/commonInterface/ICommonInterObserver;>;"

.method static <clinit>()V
new com/product/android/commonInterface/CommonInterfaceManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/product/android/commonInterface/CommonInterfaceManager/<init>(Ljava/lang/String;I)V
putstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
anewarray com/product/android/commonInterface/CommonInterfaceManager
dup
iconst_0
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
aastore
putstatic com/product/android/commonInterface/CommonInterfaceManager/$VALUES [Lcom/product/android/commonInterface/CommonInterfaceManager;
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
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/product/android/commonInterface/CommonInterfaceManager/mCIObservers Ljava/util/HashMap;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/commonInterface/CommonInterfaceManager;
ldc com/product/android/commonInterface/CommonInterfaceManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/commonInterface/CommonInterfaceManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/commonInterface/CommonInterfaceManager;
getstatic com/product/android/commonInterface/CommonInterfaceManager/$VALUES [Lcom/product/android/commonInterface/CommonInterfaceManager;
invokevirtual [Lcom/product/android/commonInterface/CommonInterfaceManager;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/commonInterface/CommonInterfaceManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
aload 0
getfield com/product/android/commonInterface/CommonInterfaceManager/mCIObservers Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/ICommonInterObserver
astore 4
aload 4
ifnull L0
aload 4
iload 2
aload 3
invokeinterface com/product/android/commonInterface/ICommonInterObserver/onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I 2
ireturn
L0:
sipush -1000
ireturn
.limit locals 5
.limit stack 3
.end method

.method public registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/product/android/commonInterface/CommonInterfaceManager/mCIObservers Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L3
L0:
aload 0
getfield com/product/android/commonInterface/CommonInterfaceManager/mCIObservers Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
return
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
ldc "CommonInterfaceManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "registStateObserver put error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L3:
ldc "CommonInterfaceManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "registStateObserver contain key:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 3
.end method

.method public unrigestStateObserver(I)V
aload 0
getfield com/product/android/commonInterface/CommonInterfaceManager/mCIObservers Ljava/util/HashMap;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 2
.limit stack 2
.end method
