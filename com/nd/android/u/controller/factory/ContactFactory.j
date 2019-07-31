.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/ContactFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/ContactFactory;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/ContactFactory;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/ContactFactory;

.field private 'mCreatorArray' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/android/u/controller/outInterface/IContactCreator;>;"

.field private 'mDefaultContactCreator' Lcom/nd/android/u/controller/outInterface/IContactCreator;

.method static <clinit>()V
new com/nd/android/u/controller/factory/ContactFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/ContactFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/ContactFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/ContactFactory/INSTANCE Lcom/nd/android/u/controller/factory/ContactFactory;
aastore
putstatic com/nd/android/u/controller/factory/ContactFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/ContactFactory;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/ContactFactory;
ldc com/nd/android/u/controller/factory/ContactFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/ContactFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/ContactFactory;
getstatic com/nd/android/u/controller/factory/ContactFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/ContactFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/ContactFactory
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

.method public getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem;
aconst_null
astore 3
aload 3
astore 2
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mCreatorArray Landroid/util/SparseArray;
ifnull L0
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mCreatorArray Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IContactCreator
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
iload 1
invokeinterface com/nd/android/u/controller/outInterface/IContactCreator/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem; 1
astore 2
L0:
aload 2
astore 3
aload 2
ifnonnull L1
aload 2
astore 3
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mDefaultContactCreator Lcom/nd/android/u/controller/outInterface/IContactCreator;
ifnull L1
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mDefaultContactCreator Lcom/nd/android/u/controller/outInterface/IContactCreator;
iload 1
invokeinterface com/nd/android/u/controller/outInterface/IContactCreator/getRecentContactItem(I)Lcom/nd/android/u/controller/bean/contact/RecentContactItem; 1
astore 3
L1:
aload 3
areturn
.limit locals 5
.limit stack 2
.end method

.method public registContactCreator(ILcom/nd/android/u/controller/outInterface/IContactCreator;)V
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mCreatorArray Landroid/util/SparseArray;
ifnonnull L0
aload 0
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield com/nd/android/u/controller/factory/ContactFactory/mCreatorArray Landroid/util/SparseArray;
L0:
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mCreatorArray Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
ifnonnull L1
aload 0
getfield com/nd/android/u/controller/factory/ContactFactory/mCreatorArray Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public setDefaultMessageCreator(Lcom/nd/android/u/controller/outInterface/IContactCreator;)V
aload 0
aload 1
putfield com/nd/android/u/controller/factory/ContactFactory/mDefaultContactCreator Lcom/nd/android/u/controller/outInterface/IContactCreator;
return
.limit locals 2
.limit stack 2
.end method
