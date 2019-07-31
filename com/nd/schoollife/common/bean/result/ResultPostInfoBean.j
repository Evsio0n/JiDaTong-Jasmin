.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultPostInfoBean
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = -1197711503649546285L


.field private 'postInfoBean' Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getPostInfoBean()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultPostInfoBean/postInfoBean Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPostInfoBean(Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultPostInfoBean/postInfoBean Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
return
.limit locals 2
.limit stack 2
.end method
