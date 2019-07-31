.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter
.super android/widget/BaseAdapter
.inner class MyCategoryAdapter inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter outer com/nd/schoollife/ui/community/activity/SearchCommunityActivity
.inner class inner com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1

.field private 'mContext' Landroid/content/Context;

.field private 'mData' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;"

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;

.method public <init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/this$0 Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/search_community_category_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/nd/schoollife/R$id/tv_search_community_category I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 3
new com/nd/schoollife/ui/community/activity/SearchCommunityActivity$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity$ViewHolder/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$1;)V
astore 4
aload 4
aload 3
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$ViewHolder/mTextView Landroid/widget/TextView;
aload 2
aload 4
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L2
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L2
aload 3
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
new com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
aload 0
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter$1/<init>(Lcom/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter;JLjava/lang/String;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/community/activity/SearchCommunityActivity$ViewHolder
getfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$ViewHolder/mTextView Landroid/widget/TextView;
astore 3
goto L1
.limit locals 5
.limit stack 8
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/SearchCommunityActivity$MyCategoryAdapter/mData Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
