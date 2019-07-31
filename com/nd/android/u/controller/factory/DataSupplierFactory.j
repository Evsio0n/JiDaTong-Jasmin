.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/DataSupplierFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/DataSupplierFactory;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/DataSupplierFactory;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/DataSupplierFactory;

.field private static 'mCreatorMap' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/android/u/controller/outInterface/IDataSupplierCreator;>;"

.method static <clinit>()V
new com/nd/android/u/controller/factory/DataSupplierFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/DataSupplierFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/DataSupplierFactory/INSTANCE Lcom/nd/android/u/controller/factory/DataSupplierFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/DataSupplierFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/INSTANCE Lcom/nd/android/u/controller/factory/DataSupplierFactory;
aastore
putstatic com/nd/android/u/controller/factory/DataSupplierFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/DataSupplierFactory;
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putstatic com/nd/android/u/controller/factory/DataSupplierFactory/mCreatorMap Landroid/util/SparseArray;
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

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/DataSupplierFactory;
ldc com/nd/android/u/controller/factory/DataSupplierFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/DataSupplierFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/DataSupplierFactory;
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/DataSupplierFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/DataSupplierFactory
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

.method public getDataSupplier(IJILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/mCreatorMap Landroid/util/SparseArray;
ifnull L0
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IDataSupplierCreator
astore 6
aload 6
ifnull L0
aload 6
iload 1
lload 2
iload 4
aload 5
invokeinterface com/nd/android/u/controller/outInterface/IDataSupplierCreator/getDataSupplier(IJILjava/lang/String;)Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier; 5
areturn
L0:
iload 1
tableswitch 0
L1
L2
L3
L4
default : L5
L5:
aconst_null
areturn
L4:
new com/nd/android/u/controller/dataSupplier/AppDataSupplier
dup
lload 2
l2i
aload 5
invokespecial com/nd/android/u/controller/dataSupplier/AppDataSupplier/<init>(ILjava/lang/String;)V
areturn
L1:
new com/nd/android/u/controller/dataSupplier/PersonDataSupplier
dup
lload 2
invokespecial com/nd/android/u/controller/dataSupplier/PersonDataSupplier/<init>(J)V
areturn
L2:
new com/nd/android/u/controller/dataSupplier/GroupDataSupplier
dup
lload 2
iload 4
invokespecial com/nd/android/u/controller/dataSupplier/GroupDataSupplier/<init>(JI)V
areturn
L3:
new com/nd/android/u/controller/dataSupplier/SystemDataSupplier
dup
lconst_0
invokespecial com/nd/android/u/controller/dataSupplier/SystemDataSupplier/<init>(J)V
areturn
.limit locals 7
.limit stack 6
.end method

.method public registDataSupplier(ILcom/nd/android/u/controller/outInterface/IDataSupplierCreator;)V
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
ifnonnull L0
getstatic com/nd/android/u/controller/factory/DataSupplierFactory/mCreatorMap Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
return
L0:
ldc "CHAT"
new java/lang/StringBuilder
dup
ldc "creator type exist:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method
