.bytecode 50.0
.class public synchronized com/nd/android/u/contact/listener/UserInfoOnClickListeren
.super java/lang/Object
.implements android/view/View$OnClickListener

.field private 'mContext' Landroid/content/Context;

.field private 'mFid' J

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/listener/UserInfoOnClickListeren/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public final onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/listener/UserInfoOnClickListeren/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/listener/UserInfoOnClickListeren/mFid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method

.method public final setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/listener/UserInfoOnClickListeren/mFid J
return
.limit locals 3
.limit stack 3
.end method
