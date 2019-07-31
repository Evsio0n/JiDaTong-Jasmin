.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo
.super com/nd/schoollife/ui/common/view/widget/pagination/PageInfo

.field private 'page' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/page I
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/<init>()V
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/page I
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/PageInfo/size I
return
.limit locals 2
.limit stack 2
.end method

.method public getPage()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/page I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public nextPage()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/page I
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public setPage(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/page I
return
.limit locals 2
.limit stack 2
.end method
