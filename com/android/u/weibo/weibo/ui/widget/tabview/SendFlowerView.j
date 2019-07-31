.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private 'mContext' Landroid/content/Context;

.field private 'mPageType' I

.field private 'mUid' J

.method public <init>(Landroid/content/Context;IJ)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mPageType I
aload 0
lload 3
putfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mUid J
return
.limit locals 5
.limit stack 3
.end method

.method public clearData()V
return
.limit locals 1
.limit stack 0
.end method

.method public doClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mContext Landroid/content/Context;
instanceof android/app/Activity
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mPageType I
ifne L1
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mContext Landroid/content/Context;
ldc com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
L2:
aload 1
ldc "uid"
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mUid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mContext Landroid/content/Context;
checkcast android/app/Activity
aload 1
sipush 1003
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L0:
return
L1:
new android/content/Intent
dup
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/mContext Landroid/content/Context;
ldc com/android/u/weibo/flower/ui/activity/SendFlowerRankFriendsActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
goto L2
.limit locals 2
.limit stack 4
.end method

.method public getDataAndProcessBitmap()V
return
.limit locals 1
.limit stack 0
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/flower I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/SendFlowerView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/sendflower I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method protected isNeedTask()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected setGridViewData(ILandroid/view/View;Landroid/widget/AbsListView$LayoutParams;)Landroid/view/View;
aload 2
areturn
.limit locals 4
.limit stack 1
.end method

.method public updateData(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public updateView()V
return
.limit locals 1
.limit stack 0
.end method
