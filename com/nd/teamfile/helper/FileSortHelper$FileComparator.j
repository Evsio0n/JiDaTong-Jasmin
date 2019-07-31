.bytecode 50.0
.class synchronized abstract com/nd/teamfile/helper/FileSortHelper$FileComparator
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"
.inner class private abstract FileComparator inner com/nd/teamfile/helper/FileSortHelper$FileComparator outer com/nd/teamfile/helper/FileSortHelper

.field final synthetic 'this$0' Lcom/nd/teamfile/helper/FileSortHelper;

.method private <init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
aload 0
aload 1
putfield com/nd/teamfile/helper/FileSortHelper$FileComparator/this$0 Lcom/nd/teamfile/helper/FileSortHelper;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/teamfile/helper/FileSortHelper;Lcom/nd/teamfile/helper/FileSortHelper$1;)V
aload 0
aload 1
invokespecial com/nd/teamfile/helper/FileSortHelper$FileComparator/<init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
return
.limit locals 3
.limit stack 2
.end method

.method public compare(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)I
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
if_icmpne L0
aload 0
aload 1
aload 2
invokevirtual com/nd/teamfile/helper/FileSortHelper$FileComparator/doCompare(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)I
ireturn
L0:
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifeq L1
iconst_m1
ireturn
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/FileExplorerInfo
aload 2
checkcast com/nd/teamfile/sdk/type/FileExplorerInfo
invokevirtual com/nd/teamfile/helper/FileSortHelper$FileComparator/compare(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract doCompare(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)I
.end method
