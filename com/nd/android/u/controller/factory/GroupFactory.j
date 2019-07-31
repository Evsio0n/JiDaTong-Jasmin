.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/GroupFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/GroupFactory;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/GroupFactory;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/GroupFactory;

.field private 'mSuppliers' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/android/u/controller/innerInterface/IGroupSupplier;>;"

.method static <clinit>()V
new com/nd/android/u/controller/factory/GroupFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/GroupFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/GroupFactory/INSTANCE Lcom/nd/android/u/controller/factory/GroupFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/GroupFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/GroupFactory/INSTANCE Lcom/nd/android/u/controller/factory/GroupFactory;
aastore
putstatic com/nd/android/u/controller/factory/GroupFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/GroupFactory;
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
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/GroupFactory;
ldc com/nd/android/u/controller/factory/GroupFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/GroupFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/GroupFactory;
getstatic com/nd/android/u/controller/factory/GroupFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/GroupFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/GroupFactory
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

.method public getAllGroupSupplier()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/controller/innerInterface/IGroupSupplier;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 1
aload 0
getfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
invokevirtual android/util/SparseArray/size()I
istore 2
L0:
iload 1
iload 2
if_icmplt L1
aload 4
areturn
L1:
aload 0
getfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/keyAt(I)I
istore 3
aload 4
aload 0
getfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IGroupSupplier
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 5
.limit stack 3
.end method

.method public getGroupList(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lims/outInterface/IGroup;>;"
aload 0
getfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IGroupSupplier
astore 2
aload 2
ifnull L0
aload 2
invokeinterface com/nd/android/u/controller/innerInterface/IGroupSupplier/getGroupList()Ljava/util/ArrayList; 0
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public registGroupsupplier(ILcom/nd/android/u/controller/innerInterface/IGroupSupplier;)V
aload 0
getfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
ifnonnull L0
aload 0
getfield com/nd/android/u/controller/factory/GroupFactory/mSuppliers Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
