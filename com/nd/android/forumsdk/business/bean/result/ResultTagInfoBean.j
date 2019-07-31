.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 6820693115211439255L


.field private 'tagInfoBean' Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getTagInfoBean()Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/tagInfoBean Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setTagInfoBean(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean/tagInfoBean Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
return
.limit locals 2
.limit stack 2
.end method
