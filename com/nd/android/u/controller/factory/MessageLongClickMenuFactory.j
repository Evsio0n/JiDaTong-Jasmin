.bytecode 50.0
.class public final synchronized com/nd/android/u/controller/factory/MessageLongClickMenuFactory
.super java/lang/Object
.inner class inner com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1
.inner class inner com/nd/android/u/controller/factory/MessageLongClickMenuFactory$2

.field private static 'sInstance' Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;

.field private 'mMessageListItems' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;"

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/sInstance Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory/mMessageListItems Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
getstatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/sInstance Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
ifnonnull L3
ldc com/nd/android/u/controller/factory/MessageLongClickMenuFactory
monitorenter
L0:
getstatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/sInstance Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
ifnonnull L1
new com/nd/android/u/controller/factory/MessageLongClickMenuFactory
dup
invokespecial com/nd/android/u/controller/factory/MessageLongClickMenuFactory/<init>()V
putstatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/sInstance Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
L1:
ldc com/nd/android/u/controller/factory/MessageLongClickMenuFactory
monitorexit
L3:
getstatic com/nd/android/u/controller/factory/MessageLongClickMenuFactory/sInstance Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;
areturn
L2:
astore 0
L4:
ldc com/nd/android/u/controller/factory/MessageLongClickMenuFactory
monitorexit
L5:
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method private getMenuItemLabels(Ljava/util/List;)[Ljava/lang/String;
.signature "(Ljava/util/List<+Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;)[Ljava/lang/String;"
aload 1
invokeinterface java/util/List/size()I 0
istore 3
iload 3
anewarray java/lang/String
astore 4
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmplt L1
aload 4
areturn
L1:
aload 4
iload 2
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/getLabel()Ljava/lang/String; 0
aastore
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 4
.end method

.method public addMenuItem(Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;)V
aload 0
getfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory/mMessageListItems Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public buildMenuItems(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/util/List;
.signature "(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory/mMessageListItems Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 1
areturn
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/innerInterface/IChatListLongClickMenu
astore 4
aload 4
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickMenu/isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z 1
ifeq L0
aload 1
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
.limit locals 5
.limit stack 2
.end method

.method public clearMenuItem()V
aload 0
getfield com/nd/android/u/controller/factory/MessageLongClickMenuFactory/mMessageListItems Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public show(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/buildMenuItems(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/util/List;
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Landroid/content/Context;Ljava/util/List;)V
return
.limit locals 3
.limit stack 5
.end method

.method public show(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
aload 0
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/buildMenuItems(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/util/List;
aload 3
invokevirtual com/nd/android/u/controller/factory/MessageLongClickMenuFactory/show(Ljava/util/List;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
return
.limit locals 4
.limit stack 4
.end method

.method public show(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;)V"
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/size()I 0
ifne L1
L0:
return
L1:
new android/app/AlertDialog$Builder
dup
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 0
aload 2
invokespecial com/nd/android/u/controller/factory/MessageLongClickMenuFactory/getMenuItemLabels(Ljava/util/List;)[Ljava/lang/String;
new com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1
dup
aload 0
aload 2
aload 1
invokespecial com/nd/android/u/controller/factory/MessageLongClickMenuFactory$1/<init>(Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;Ljava/util/List;Landroid/content/Context;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/OP_CANCEL I
new com/nd/android/u/controller/factory/MessageLongClickMenuFactory$2
dup
aload 0
invokespecial com/nd/android/u/controller/factory/MessageLongClickMenuFactory$2/<init>(Lcom/nd/android/u/controller/factory/MessageLongClickMenuFactory;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 4
.limit stack 7
.end method

.method public show(Ljava/util/List;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IChatListLongClickMenu;>;Lcom/nd/android/u/controller/innerInterface/IChatListLongClickOperation;)V"
aload 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IChatListLongClickOperation/show(Ljava/util/List;)V 1
return
.limit locals 3
.limit stack 2
.end method
