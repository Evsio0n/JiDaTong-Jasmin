.bytecode 50.0
.class synchronized com/nd/teamfile/helper/FileSortHelper$4
.super com/nd/teamfile/helper/FileSortHelper$FileComparator
.enclosing method com/nd/teamfile/helper/FileSortHelper
.inner class inner com/nd/teamfile/helper/FileSortHelper$4

.field final synthetic 'this$0' Lcom/nd/teamfile/helper/FileSortHelper;

.method <init>(Lcom/nd/teamfile/helper/FileSortHelper;)V
aload 0
aload 1
putfield com/nd/teamfile/helper/FileSortHelper$4/this$0 Lcom/nd/teamfile/helper/FileSortHelper;
aload 0
aload 1
aconst_null
invokespecial com/nd/teamfile/helper/FileSortHelper$FileComparator/<init>(Lcom/nd/teamfile/helper/FileSortHelper;Lcom/nd/teamfile/helper/FileSortHelper$1;)V
return
.limit locals 2
.limit stack 3
.end method

.method public doCompare(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)I
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/compareToIgnoreCase(Ljava/lang/String;)I
istore 3
iload 3
ifeq L0
iload 3
ireturn
L0:
aload 1
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/compareToIgnoreCase(Ljava/lang/String;)I
ireturn
.limit locals 4
.limit stack 2
.end method
