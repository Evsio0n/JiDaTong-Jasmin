.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/widget/tabview/BackpackView
.super com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/BackpackView/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public clearData()V
return
.limit locals 1
.limit stack 0
.end method

.method public doClick()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BackpackView/mContext Landroid/content/Context;
instanceof android/app/Activity
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/BackpackView/mContext Landroid/content/Context;
checkcast android/app/Activity
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doBackpack(Landroid/app/Activity;)V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getDataAndProcessBitmap()V
return
.limit locals 1
.limit stack 0
.end method

.method protected getDefaultBitmap()I
getstatic com/android/u/weibo/R$drawable/bg_tag_backpack I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/BackpackView/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/backpack I
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
