.bytecode 50.0
.class public final synchronized enum com/nd/android/u/controller/factory/ShareFileFactory
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/controller/factory/ShareFileFactory;>;"

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/android/u/controller/factory/ShareFileFactory;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/controller/factory/ShareFileFactory;

.field private 'mInterfaceArray' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Lcom/nd/android/u/controller/outInterface/IShareFileCreator;>;"

.method static <clinit>()V
new com/nd/android/u/controller/factory/ShareFileFactory
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/controller/factory/ShareFileFactory/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
iconst_1
anewarray com/nd/android/u/controller/factory/ShareFileFactory
dup
iconst_0
getstatic com/nd/android/u/controller/factory/ShareFileFactory/INSTANCE Lcom/nd/android/u/controller/factory/ShareFileFactory;
aastore
putstatic com/nd/android/u/controller/factory/ShareFileFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/ShareFileFactory;
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
putfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/controller/factory/ShareFileFactory;
ldc com/nd/android/u/controller/factory/ShareFileFactory
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/controller/factory/ShareFileFactory
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/controller/factory/ShareFileFactory;
getstatic com/nd/android/u/controller/factory/ShareFileFactory/ENUM$VALUES [Lcom/nd/android/u/controller/factory/ShareFileFactory;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/android/u/controller/factory/ShareFileFactory
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

.method public getShareFileInterface(II)Lcom/nd/android/u/controller/innerInterface/IShareFile;
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/outInterface/IShareFileCreator
astore 3
aload 3
ifnonnull L0
aconst_null
areturn
L0:
aload 3
iload 2
invokeinterface com/nd/android/u/controller/outInterface/IShareFileCreator/getShareFileInterface(I)Lcom/nd/android/u/controller/innerInterface/IShareFile; 1
areturn
.limit locals 4
.limit stack 2
.end method

.method public registDefault()V
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iconst_0
new com/nd/android/u/business/com/DefaultUploadCreator
dup
invokespecial com/nd/android/u/business/com/DefaultUploadCreator/<init>()V
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iconst_2
new com/nd/android/u/business/com/DefaultUploadCreator
dup
invokespecial com/nd/android/u/business/com/DefaultUploadCreator/<init>()V
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iconst_1
new com/nd/android/u/business/com/DefaultDownloadCreator
dup
invokespecial com/nd/android/u/business/com/DefaultDownloadCreator/<init>()V
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
return
.limit locals 1
.limit stack 4
.end method

.method public registShareFileInterface(ILcom/nd/android/u/controller/outInterface/IShareFileCreator;)V
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/get(I)Ljava/lang/Object;
ifnull L0
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iload 1
invokevirtual android/util/SparseArray/remove(I)V
L0:
aload 0
getfield com/nd/android/u/controller/factory/ShareFileFactory/mInterfaceArray Landroid/util/SparseArray;
iload 1
aload 2
invokevirtual android/util/SparseArray/put(ILjava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
