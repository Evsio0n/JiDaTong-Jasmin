.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo
.super com/nd/schoollife/ui/common/view/widget/pagination/PageInfo

.field private 'ghostV' J

.field private 'page' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(I)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/size I
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(J)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(JII)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
aload 0
iload 3
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
aload 0
iload 4
putfield com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/size I
return
.limit locals 5
.limit stack 3
.end method

.method public getGhostV()J
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPage()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public nextPage()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setGhostV(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/ghostV J
return
.limit locals 3
.limit stack 3
.end method

.method public setPage(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/page I
return
.limit locals 2
.limit stack 2
.end method
