.bytecode 50.0
.class public final synchronized enum com/nd/android/u/chatUtil/ChatHttpRequestlManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;>;"
.inner class inner com/nd/android/u/chatUtil/ChatHttpRequestlManager$1

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;

.field private static final 'MAX_THREAD_COUNT' I = 10


.field private 'mExecutorService' Ljava/util/concurrent/ExecutorService;

.field private 'mRequestingList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'observer' Lims/outInterface/IStateObserver;

.method static <clinit>()V
new com/nd/android/u/chatUtil/ChatHttpRequestlManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/chatUtil/ChatHttpRequestlManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
iconst_1
anewarray com/nd/android/u/chatUtil/ChatHttpRequestlManager
dup
iconst_0
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aastore
putstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/ENUM$VALUES [Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
aload 0
new com/nd/android/u/chatUtil/ChatHttpRequestlManager$1
dup
aload 0
invokespecial com/nd/android/u/chatUtil/ChatHttpRequestlManager$1/<init>(Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;)V
putfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/observer Lims/outInterface/IStateObserver;
aload 0
bipush 10
invokestatic java/util/concurrent/Executors/newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;
putfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mExecutorService Ljava/util/concurrent/ExecutorService;
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/observer Lims/outInterface/IStateObserver;
invokevirtual ims/manager/IMSStateManager/registStateObserver(Lims/outInterface/IStateObserver;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$2(Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
ldc com/nd/android/u/chatUtil/ChatHttpRequestlManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/chatUtil/ChatHttpRequestlManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/ENUM$VALUES [Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/chatUtil/ChatHttpRequestlManager
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/String;)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L3
aload 1
monitorexit
L1:
iconst_1
ireturn
L3:
aload 1
monitorexit
L4:
iconst_0
ireturn
L2:
astore 2
L5:
aload 1
monitorexit
L6:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public excuteRequest(Ljava/lang/Runnable;)V
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mExecutorService Ljava/util/concurrent/ExecutorService;
aload 1
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
ldc "public"
new java/lang/StringBuilder
dup
ldc "ChatHttpRequestlManager put:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
aload 1
monitorexit
L3:
return
L2:
astore 2
L4:
aload 1
monitorexit
L5:
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
astore 1
aload 1
monitorenter
L0:
ldc "public"
new java/lang/StringBuilder
dup
ldc "ChatHttpRequestlManager remove:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/chatUtil/ChatHttpRequestlManager/mRequestingList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 1
monitorexit
L1:
return
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 4
.end method
