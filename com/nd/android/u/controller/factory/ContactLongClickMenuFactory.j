.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/ContactLongClickMenuFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;>;"
.inner class inner com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1
.inner class inner com/nd/android/u/controller/factory/ContactLongClickMenuFactory$2

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;

.field private 'mContactListItems' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IContactLongClickMenu;>;"

.method static <clinit>()V
new com/nd/android/u/controller/factory/ContactLongClickMenuFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/ContactLongClickMenuFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/ContactLongClickMenuFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
aastore
putstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
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
putfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory/mContactListItems Ljava/util/List;
return
.limit locals 3
.limit stack 3
.end method

.method private getMenuItemLabels(Ljava/util/List;)[Ljava/lang/String;
.signature "(Ljava/util/List<+Lcom/nd/android/u/controller/innerInterface/IContactLongClickMenu;>;)[Ljava/lang/String;"
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
checkcast com/nd/android/u/controller/innerInterface/IContactLongClickMenu
invokeinterface com/nd/android/u/controller/innerInterface/IContactLongClickMenu/getLabel()Ljava/lang/String; 0
aastore
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
ldc com/nd/android/u/controller/factory/ContactLongClickMenuFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/ContactLongClickMenuFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
getstatic com/nd/android/u/controller/factory/ContactLongClickMenuFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/ContactLongClickMenuFactory
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

.method public addMessageMenuItem(Lcom/nd/android/u/controller/innerInterface/IContactLongClickMenu;)V
aload 0
getfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory/mContactListItems Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public buildMenuItems(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Ljava/util/List;
.signature "(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Ljava/util/List<Lcom/nd/android/u/controller/innerInterface/IContactLongClickMenu;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory/mContactListItems Ljava/util/List;
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
checkcast com/nd/android/u/controller/innerInterface/IContactLongClickMenu
astore 4
aload 4
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IContactLongClickMenu/isEnable(Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Z 1
ifeq L0
aload 1
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
.limit locals 5
.limit stack 2
.end method

.method public clearMessageMenuItem()V
aload 0
getfield com/nd/android/u/controller/factory/ContactLongClickMenuFactory/mContactListItems Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public showMessageMenu(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/controller/factory/ContactLongClickMenuFactory/buildMenuItems(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)Ljava/util/List;
astore 3
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/size()I 0
ifne L1
L0:
return
L1:
new android/app/AlertDialog$Builder
dup
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 4
aload 4
aload 0
aload 3
invokespecial com/nd/android/u/controller/factory/ContactLongClickMenuFactory/getMenuItemLabels(Ljava/util/List;)[Ljava/lang/String;
new com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1
dup
aload 0
aload 3
aload 1
aload 2
invokespecial com/nd/android/u/controller/factory/ContactLongClickMenuFactory$1/<init>(Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;Ljava/util/List;Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 4
getstatic com/nd/android/u/controller/ResMapper/INSTANCE Lcom/nd/android/u/controller/ResMapper;
getfield com/nd/android/u/controller/ResMapper/OP_CANCEL I
new com/nd/android/u/controller/factory/ContactLongClickMenuFactory$2
dup
aload 0
invokespecial com/nd/android/u/controller/factory/ContactLongClickMenuFactory$2/<init>(Lcom/nd/android/u/controller/factory/ContactLongClickMenuFactory;)V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 4
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 5
.limit stack 8
.end method
