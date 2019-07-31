.bytecode 50.0
.class public synchronized com/product/android/business/bean/PagingParams
.super java/lang/Object

.field private 'mIdMax' J

.field private 'mIdMin' J

.field private 'mPage' I

.field private 'mPageSize' I

.method public <init>()V
aload 0
lconst_0
lconst_0
iconst_0
iconst_0
invokespecial com/product/android/business/bean/PagingParams/<init>(JJII)V
return
.limit locals 1
.limit stack 7
.end method

.method public <init>(II)V
aload 0
lconst_0
lconst_0
iload 1
iload 2
invokespecial com/product/android/business/bean/PagingParams/<init>(JJII)V
return
.limit locals 3
.limit stack 7
.end method

.method public <init>(JJI)V
aload 0
lload 1
lload 3
iconst_0
iload 5
invokespecial com/product/android/business/bean/PagingParams/<init>(JJII)V
return
.limit locals 6
.limit stack 7
.end method

.method public <init>(JJII)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 6
putfield com/product/android/business/bean/PagingParams/mPageSize I
aload 0
lload 1
putfield com/product/android/business/bean/PagingParams/mIdMin J
aload 0
lload 3
putfield com/product/android/business/bean/PagingParams/mIdMax J
aload 0
iload 5
putfield com/product/android/business/bean/PagingParams/mPage I
return
.limit locals 7
.limit stack 3
.end method

.method public getIdMax()J
aload 0
getfield com/product/android/business/bean/PagingParams/mIdMax J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIdMin()J
aload 0
getfield com/product/android/business/bean/PagingParams/mIdMin J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPage()I
aload 0
getfield com/product/android/business/bean/PagingParams/mPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPageSize()I
aload 0
getfield com/product/android/business/bean/PagingParams/mPageSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setIdMax(J)V
aload 0
lload 1
putfield com/product/android/business/bean/PagingParams/mIdMax J
return
.limit locals 3
.limit stack 3
.end method

.method public setIdMin(J)V
aload 0
lload 1
putfield com/product/android/business/bean/PagingParams/mIdMin J
return
.limit locals 3
.limit stack 3
.end method

.method public setPage(I)V
aload 0
iload 1
putfield com/product/android/business/bean/PagingParams/mPage I
return
.limit locals 2
.limit stack 2
.end method

.method public setPageSize(I)V
aload 0
iload 1
putfield com/product/android/business/bean/PagingParams/mPageSize I
return
.limit locals 2
.limit stack 2
.end method
