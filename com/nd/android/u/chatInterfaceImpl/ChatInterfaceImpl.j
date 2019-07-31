.bytecode 50.0
.class public final synchronized enum com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;

.field public 'chatCallOtherModel' Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;

.field public 'headerBitmapInterface' Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;

.field public 'messageAnalyser' Lcom/nd/android/u/controller/outInterface/IMessageAnalyser;

.field public 'parentChecker' Lcom/nd/android/u/controller/outInterface/IParentChecker;

.field public 'preProccess' Lcom/nd/android/u/controller/outInterface/IMessagePreProccess;

.method static <clinit>()V
new com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
iconst_1
anewarray com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl
dup
iconst_0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
aastore
putstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/ENUM$VALUES [Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
ldc com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/ENUM$VALUES [Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl
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

.method public getParentType(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)I
aload 0
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/parentChecker Lcom/nd/android/u/controller/outInterface/IParentChecker;
ifnonnull L0
iconst_m1
ireturn
L0:
aload 0
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/parentChecker Lcom/nd/android/u/controller/outInterface/IParentChecker;
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IParentChecker/getParentType(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)I 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getSubTypes(I)[I
aload 0
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/parentChecker Lcom/nd/android/u/controller/outInterface/IParentChecker;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/parentChecker Lcom/nd/android/u/controller/outInterface/IParentChecker;
iload 1
invokeinterface com/nd/android/u/controller/outInterface/IParentChecker/getSonType(I)[I 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public preProccessMessage(Lims/bean/NDMessage;)Z
aload 0
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccess Lcom/nd/android/u/controller/outInterface/IMessagePreProccess;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccess Lcom/nd/android/u/controller/outInterface/IMessagePreProccess;
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IMessagePreProccess/preProccess(Lims/bean/NDMessage;)Z 1
ireturn
.limit locals 2
.limit stack 2
.end method
