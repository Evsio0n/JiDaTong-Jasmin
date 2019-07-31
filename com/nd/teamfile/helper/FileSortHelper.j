.bytecode 50.0
.class public synchronized com/nd/teamfile/helper/FileSortHelper
.super java/lang/Object
.inner class inner com/nd/teamfile/helper/FileSortHelper$1
.inner class inner com/nd/teamfile/helper/FileSortHelper$2
.inner class inner com/nd/teamfile/helper/FileSortHelper$3
.inner class inner com/nd/teamfile/helper/FileSortHelper$4
.inner class private abstract FileComparator inner com/nd/teamfile/helper/FileSortHelper$FileComparator outer com/nd/teamfile/helper/FileSortHelper
.inner class public static final enum SortMethod inner com/nd/teamfile/helper/FileSortHelper$SortMethod outer com/nd/teamfile/helper/FileSortHelper

.field private 'cmpDate' Ljava/util/Comparator; signature "Ljava/util/Comparator<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"

.field private 'cmpName' Ljava/util/Comparator; signature "Ljava/util/Comparator<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"

.field private 'cmpSize' Ljava/util/Comparator; signature "Ljava/util/Comparator<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"

.field private 'cmpType' Ljava/util/Comparator; signature "Ljava/util/Comparator<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"

.field private 'mComparatorList' Ljava/util/HashMap; signature "Ljava/util/HashMap<Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;Ljava/util/Comparator<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;>;"

.field private 'mSort' Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/nd/teamfile/helper/FileSortHelper$SortMethod/name Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
putfield com/nd/teamfile/helper/FileSortHelper/mSort Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/teamfile/helper/FileSortHelper/mComparatorList Ljava/util/HashMap;
aload 0
new com/nd/teamfile/helper/FileSortHelper$1
dup
aload 0
invokespecial com/nd/teamfile/helper/FileSortHelper$1/<init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
putfield com/nd/teamfile/helper/FileSortHelper/cmpName Ljava/util/Comparator;
aload 0
new com/nd/teamfile/helper/FileSortHelper$2
dup
aload 0
invokespecial com/nd/teamfile/helper/FileSortHelper$2/<init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
putfield com/nd/teamfile/helper/FileSortHelper/cmpSize Ljava/util/Comparator;
aload 0
new com/nd/teamfile/helper/FileSortHelper$3
dup
aload 0
invokespecial com/nd/teamfile/helper/FileSortHelper$3/<init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
putfield com/nd/teamfile/helper/FileSortHelper/cmpDate Ljava/util/Comparator;
aload 0
new com/nd/teamfile/helper/FileSortHelper$4
dup
aload 0
invokespecial com/nd/teamfile/helper/FileSortHelper$4/<init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
putfield com/nd/teamfile/helper/FileSortHelper/cmpType Ljava/util/Comparator;
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/mComparatorList Ljava/util/HashMap;
getstatic com/nd/teamfile/helper/FileSortHelper$SortMethod/name Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/cmpName Ljava/util/Comparator;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/mComparatorList Ljava/util/HashMap;
getstatic com/nd/teamfile/helper/FileSortHelper$SortMethod/size Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/cmpSize Ljava/util/Comparator;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/mComparatorList Ljava/util/HashMap;
getstatic com/nd/teamfile/helper/FileSortHelper$SortMethod/date Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/cmpDate Ljava/util/Comparator;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/mComparatorList Ljava/util/HashMap;
getstatic com/nd/teamfile/helper/FileSortHelper$SortMethod/type Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/cmpType Ljava/util/Comparator;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/teamfile/helper/FileSortHelper;J)I
aload 0
lload 1
invokespecial com/nd/teamfile/helper/FileSortHelper/longToCompareInt(J)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method private longToCompareInt(J)I
lload 1
lconst_0
lcmp
ifle L0
iconst_1
ireturn
L0:
lload 1
lconst_0
lcmp
ifge L1
iconst_m1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getComparator()Ljava/util/Comparator;
.signature "()Ljava/util/Comparator<-Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/mComparatorList Ljava/util/HashMap;
aload 0
getfield com/nd/teamfile/helper/FileSortHelper/mSort Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/util/Comparator
areturn
.limit locals 1
.limit stack 2
.end method

.method public setSortMethog(Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;)V
aload 0
aload 1
putfield com/nd/teamfile/helper/FileSortHelper/mSort Lcom/nd/teamfile/helper/FileSortHelper$SortMethod;
return
.limit locals 2
.limit stack 2
.end method
