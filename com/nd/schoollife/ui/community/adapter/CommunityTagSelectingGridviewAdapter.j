.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter
.super android/widget/BaseAdapter

.field private 'context' Landroid/content/Context;

.field private 'selTags' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.field private 'tags' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/context Landroid/content/Context;
aload 0
aload 3
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
aload 2
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
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
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/context Landroid/content/Context;
invokespecial com/nd/schoollife/ui/team/view/ExtCheckButton/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setText(Ljava/lang/CharSequence;)V
aload 2
ldc_w 14.0F
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setTextSize(F)V
aload 2
getstatic com/nd/schoollife/R$drawable/btn_sign_check_selector I
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheckImage(I)V
aload 2
getstatic com/nd/schoollife/R$drawable/btn_sign_uncheck_selector I
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setUncheckImage(I)V
aload 2
iconst_m1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/selTags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/tags Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/findTagInfo(Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)I
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
