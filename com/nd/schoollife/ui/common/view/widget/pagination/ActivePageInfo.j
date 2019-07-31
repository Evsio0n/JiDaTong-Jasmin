.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo
.super com/nd/schoollife/ui/common/view/widget/pagination/PageInfo

.field private 'maxActive' J

.field private 'minActive' J

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(I)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/size I
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(JJ)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
aload 0
lload 3
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
return
.limit locals 5
.limit stack 3
.end method

.method public <init>(JJI)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
aload 0
ldc2_w -1L
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
aload 0
lload 3
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
aload 0
iload 5
putfield com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/size I
return
.limit locals 6
.limit stack 3
.end method

.method public getMaxActive()J
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMinActive()J
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setMaxActive(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/maxActive J
return
.limit locals 3
.limit stack 3
.end method

.method public setMinActive(J)V
aload 0
lload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/minActive J
return
.limit locals 3
.limit stack 3
.end method
