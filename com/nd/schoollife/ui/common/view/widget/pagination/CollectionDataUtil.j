.bytecode 50.0
.class public final synchronized com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil
.super java/lang/Object
.inner class public static abstract interface DataDuplicate inner com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate outer com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil

.field public static 'TAG' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
.signature "<T:Ljava/lang/Object;>(Ljava/util/List<TT;>;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate<TT;>;)Ljava/util/List<TT;>;"
aload 2
ifnonnull L0
getstatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/TAG Ljava/lang/String;
ldc "removeDuplicate is fail! DataDuplicate<T> must not be  null! "
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
areturn
L0:
iload 1
ifeq L2
iconst_0
istore 3
L3:
iload 3
aload 0
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpge L1
aload 0
invokeinterface java/util/List/size()I 0
iconst_1
isub
istore 4
L4:
iload 4
iload 3
if_icmple L5
aload 2
aload 0
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
aload 0
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate/isDataDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z 2
ifeq L6
aload 0
iload 4
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L6:
iload 4
iconst_1
isub
istore 4
goto L4
L5:
iload 3
iconst_1
iadd
istore 3
goto L3
L2:
aload 0
invokeinterface java/util/List/size()I 0
istore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 5
aload 0
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iconst_0
istore 3
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L7:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 5
iload 4
iload 3
iconst_1
iadd
isub
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
iload 3
iconst_1
iadd
istore 3
goto L7
L8:
aload 5
iconst_1
aload 2
invokestatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
astore 2
iconst_0
istore 3
aload 0
invokeinterface java/util/List/clear()V 0
aload 0
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokeinterface java/util/List/size()I 0
istore 4
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L9:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
iload 4
iload 3
iconst_1
iadd
isub
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
iload 3
iconst_1
iadd
istore 3
goto L9
.limit locals 7
.limit stack 4
.end method
