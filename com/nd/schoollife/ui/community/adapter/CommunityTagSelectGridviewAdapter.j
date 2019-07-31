.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter
.super android/widget/BaseAdapter

.field private 'bkResIds' [I

.field private 'context' Landroid/content/Context;

.field private 'taglist' Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/taglist Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
iconst_5
newarray int
dup
iconst_0
getstatic com/nd/schoollife/R$drawable/ic_team_info_sign1 I
iastore
dup
iconst_1
getstatic com/nd/schoollife/R$drawable/ic_team_info_sign2 I
iastore
dup
iconst_2
getstatic com/nd/schoollife/R$drawable/ic_team_info_sign3 I
iastore
dup
iconst_3
getstatic com/nd/schoollife/R$drawable/ic_team_info_sign4 I
iastore
dup
iconst_4
getstatic com/nd/schoollife/R$drawable/ic_team_info_sign1 I
iastore
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/bkResIds [I
aload 0
aload 1
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/taglist Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
return
.limit locals 3
.limit stack 5
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/taglist Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/taglist Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
new android/widget/TextView
dup
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/context Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
ldc_w 14.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 2
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/taglist Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
iload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/getTagInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 2
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/bkResIds [I
iload 1
aload 0
getfield com/nd/schoollife/ui/community/adapter/CommunityTagSelectGridviewAdapter/bkResIds [I
arraylength
irem
iaload
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public isEnabled(I)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method
