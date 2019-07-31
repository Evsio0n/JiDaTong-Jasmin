.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter
.super android/widget/BaseAdapter

.field private 'context' Landroid/content/Context;

.field private 'selTags' Lcom/nd/schoollife/ui/team/adapter/TeamTagList;

.field private 'tags' Lcom/nd/schoollife/ui/team/adapter/TeamTagList;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/selTags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
aload 1
putfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/context Landroid/content/Context;
aload 0
aload 3
putfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
aload 2
putfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/selTags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
iload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
new com/nd/schoollife/ui/team/view/ExtCheckButton
dup
aload 0
getfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/context Landroid/content/Context;
invokespecial com/nd/schoollife/ui/team/view/ExtCheckButton/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 0
getfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
iload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/TagInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setText(Ljava/lang/CharSequence;)V
aload 2
ldc_w 14.0F
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setTextSize(F)V
aload 2
getstatic com/nd/schoollife/R$drawable/btn_team_sign_check I
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheckImage(I)V
aload 2
getstatic com/nd/schoollife/R$drawable/btn_team_sign_uncheck I
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setUncheckImage(I)V
aload 2
iconst_m1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/selTags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
iload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByIndex(I)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/findTagInfo(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)I
iflt L0
aload 2
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheck(Z)V
L0:
aload 2
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/updateCheck()V
aload 2
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setClickable(Z)V
aload 2
areturn
.limit locals 4
.limit stack 3
.end method
