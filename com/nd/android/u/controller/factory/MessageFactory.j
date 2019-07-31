.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/MessageFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/MessageFactory;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/MessageFactory;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/MessageFactory;

.field private 'mCreatorMap' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/android/u/controller/outInterface/IMessageCreator;>;"

.method static <clinit>()V
new com/nd/android/u/controller/factory/MessageFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/MessageFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/MessageFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/MessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/MessageFactory;
aastore
putstatic com/nd/android/u/controller/factory/MessageFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/MessageFactory;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/MessageFactory;
ldc com/nd/android/u/controller/factory/MessageFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/MessageFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/MessageFactory;
getstatic com/nd/android/u/controller/factory/MessageFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/MessageFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/MessageFactory
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

.method public getAllKindMessage()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;>;"
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
ifnull L0
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
invokevirtual android/util/SparseArray/size()I
ifne L1
L0:
aconst_null
areturn
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
invokevirtual android/util/SparseArray/size()I
istore 2
L2:
iload 1
iload 2
if_icmplt L3
aload 3
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iconst_0
ldc "0"
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 3
areturn
L3:
aload 3
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/valueAt(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
iconst_0
ldc "0"
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 4
.limit stack 4
.end method

.method public getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
.signature "(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class<*>;"
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 2
iload 2
iconst_3
if_icmpne L0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 1
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class;
areturn
L0:
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
iload 2
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 3
aload 3
ifnull L1
aload 3
aload 1
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getDisplayClass(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/Class; 1
areturn
L1:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public getGroupMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
iconst_1
aload 1
iload 2
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aconst_null
astore 5
iload 1
iconst_3
if_icmpne L0
aload 2
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
iload 3
ifne L1
new com/nd/android/u/controller/bean/message/DefaultAppMessage
dup
invokespecial com/nd/android/u/controller/bean/message/DefaultAppMessage/<init>()V
astore 4
L2:
aload 4
areturn
L1:
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
iload 3
aload 2
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getAppMessage(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
L0:
aload 5
astore 4
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
ifnull L2
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 6
aload 5
astore 4
aload 6
ifnull L2
aload 6
iload 3
aload 2
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageDisplay(ILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay; 2
areturn
.limit locals 7
.limit stack 3
.end method

.method public getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 4
iload 4
iconst_3
if_icmpne L0
getstatic com/nd/android/u/controller/factory/AppMessageFactory/INSTANCE Lcom/nd/android/u/controller/factory/AppMessageFactory;
aload 1
aload 2
invokevirtual com/nd/android/u/controller/factory/AppMessageFactory/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IChatListItem;
areturn
L0:
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
iload 4
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IMessageCreator
astore 5
aload 5
ifnonnull L1
aconst_null
areturn
L1:
aload 5
aload 1
aload 2
iload 3
invokeinterface com/nd/android/u/controller/outInterface/IMessageCreator/getMessageView(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Z)Lcom/nd/android/u/controller/innerInterface/IChatListItem; 3
areturn
.limit locals 6
.limit stack 4
.end method

.method public getPersonMessage()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
iconst_0
ldc "0"
iconst_0
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getSystemMessage(Ljava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
iconst_2
aload 1
iload 2
invokevirtual com/nd/android/u/controller/factory/MessageFactory/getMessage(ILjava/lang/String;I)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 3
.limit stack 4
.end method

.method public registMessageCreator(ILcom/nd/android/u/controller/outInterface/IMessageCreator;)V
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
ifnonnull L0
aload 0
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
L0:
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
ifnonnull L1
aload 0
getfield com/nd/android/u/controller/factory/MessageFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
L1:
return
.limit locals 3
.limit stack 3
.end method
