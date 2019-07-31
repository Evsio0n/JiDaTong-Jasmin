.bytecode 50.0
.class public final synchronized enum com/nd/android/u/chatUiUtils/UnSendMessageManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;

.field private 'mUnsendMessageMaps' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.method static <clinit>()V
new com/nd/android/u/chatUiUtils/UnSendMessageManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/chatUiUtils/UnSendMessageManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/chatUiUtils/UnSendMessageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
iconst_1
anewarray com/nd/android/u/chatUiUtils/UnSendMessageManager
dup
iconst_0
getstatic com/nd/android/u/chatUiUtils/UnSendMessageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
aastore
putstatic com/nd/android/u/chatUiUtils/UnSendMessageManager/$VALUES [Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
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
putfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
ldc com/nd/android/u/chatUiUtils/UnSendMessageManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/chatUiUtils/UnSendMessageManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
getstatic com/nd/android/u/chatUiUtils/UnSendMessageManager/$VALUES [Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
invokevirtual [Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/chatUiUtils/UnSendMessageManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clear()V
aload 0
getfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public getUnsendMessage(J)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
aload 3
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
aload 3
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method public put(JLjava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
aload 4
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/chatUiUtils/UnSendMessageManager/mUnsendMessageMaps Ljava/util/HashMap;
aload 4
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
return
.limit locals 5
.limit stack 3
.end method
